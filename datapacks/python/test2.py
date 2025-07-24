from gamepack.pack import Pack
from gamepack.mcfunction import McFunction
from gamepack.advancement import Advancement
from gamepack.command_execute import CommandExecute, execute, Score
import json
import copy
from gamepack.commands import Scoreboard
from gamepack.predicate import Predicate

NAMESPACE_EVENT = 'cubi_event'
VANILLA_NAMESPACE = 'minecraft'

class CubiEvent:
  InjectFunctions = []
  
  def __init__(self, name: str, event_trigger_type: str = None):
    self.name = name
    self.trigger_type = event_trigger_type
    self.trigger_func: McFunction = None
    self.trigger_adv: Advancement = None
    
  def get_resource_location(self) -> str:
    if self.trigger_type == None:
      return f'{NAMESPACE_EVENT}:event_trigger/{self.name}'
    else:
      return f'{NAMESPACE_EVENT}:event_trigger/{self.trigger_type}/{self.name}'
    
  def trigger_advancement(self, adv_trigger: str = None, condition: str = None) -> Advancement:
    self.trigger_adv = Advancement(
      {
        "criteria": {
          f"{self.get_resource_location()}": {
            "trigger": f"{adv_trigger or 'impossible'}",
            "conditions": condition if condition else {}
          }
        },
        "rewards": {
          "function": f"{self.get_resource_location()}"
        }
      }
    )
    return self.trigger_adv
    
  def trigger_function(self) -> McFunction:
    for inject_mcfunction in __class__.InjectFunctions:
      inject_mcfunction: CubiEventInjector.InjectMcFunction
      new_content = tuple(
        '\n'.join(inject_mcfunction.mcfunction.content) if line.strip() == inject_mcfunction.inject_tag else line
        for line in self.trigger_func.content
      )
    self.trigger_func.content = new_content
    return self.trigger_func
  
class CubiEventInjector:
  class InjectMcFunction(McFunction):
    def __init__(self, mcfunction: McFunction, inject_tag: str):
      self.mcfunction = mcfunction
      self.inject_tag = inject_tag
  
  def __init__(self, event_class: type[CubiEvent], mcfunction: McFunction, inject_tag: str):
    event_class.InjectFunctions.append(
      CubiEventInjector.InjectMcFunction(mcfunction, inject_tag)
    )

class CubiEventsManager:
  def __init__(self):
    self.events = {}
    
  def register(self, event: CubiEvent):
    self.events[event.name] = event
  
  def get_trigger_functions(self) -> dict:
    functions = {}
    for key, value in self.events.items():
      value: CubiEvent
      functions[key] = value.trigger_function()
    
    return functions
  
  def get_trigger_advancements(self) -> dict:
    advancements = {}
    for key, value in self.events.items():
      value: CubiEvent
      advancements[key] = value.trigger_advancement()
    
    return advancements

class ServerLoadEvent(CubiEvent):
  def __init__(self):
    super().__init__('load')
    
  def trigger_advancement(self, adv_trigger = None, condition = None):
    return None
  
  def trigger_function(self):
    self.trigger_func = McFunction(
      PlayerJoinWorldEvent.LeaveGameObjective.create(),
      PlayerJoinWorldEvent.LeaveGameCountObjective.create(),
      f'say server load'
    )
    return self.trigger_func
  
class ServerTickEvent(CubiEvent):
  def __init__(self):
    super().__init__('tick')
    
  def trigger_advancement(self, adv_trigger = None, condition = None):
    return None
  
  def trigger_function(self):
    self.trigger_func = McFunction(
      '#inject - to player tick'
    )
    super().trigger_function()
    return self.trigger_func
  
server_load_event = ServerLoadEvent()
server_tick_event = ServerTickEvent()

class ServerEventsManager(CubiEventsManager):
  def __init__(self):
    super().__init__()
    self.register(server_load_event)
    self.register(server_tick_event)
    
class PlayerTickEvent(CubiEvent):
  def __init__(self):
    super().__init__('tick', 'player')
  
  def trigger_advancement(self, adv_trigger = None, condition = None):
    return None  

  def trigger_function(self):
    CubiEventInjector(
      event_class=ServerTickEvent, 
      mcfunction=McFunction(
        f'execute as @a at @s run function {self.get_resource_location()}'
      ),
      inject_tag='#inject - to player tick'
    )
    
    return McFunction(
      'tellraw @s[tag=debug_tick] "ticking"'
    )

class PlayerJoinWorldEvent(CubiEvent):
  LeaveGameObjective = Scoreboard.Objective(
    name='cubi.player.leave_game',
    critera='minecraft.custom:minecraft.leave_game'
  )
  LeaveGameCountObjective = Scoreboard.Objective(
    name='cubi.player.leave_game_count',
    critera='dummy'
  )

  def __init__(self):
    super().__init__('join_world', 'player')
    
  def get_resource_location(self):
    return super().get_resource_location()
    
  def trigger_advancement(self, adv_trigger = None, condition = None):
    return super().trigger_advancement(
      adv_trigger='minecraft:tick', 
      condition=
        {
          'player': [
            Predicate.AnyOf(
              terms=[
                Predicate.Inverted(
                  term=Predicate.EntityScores(
                    scores={f'{self.LeaveGameObjective.name}': {}}
                  ).obj
                ).obj,
                Predicate.EntityScores(
                  scores={f'{self.LeaveGameObjective.name}': {'min': 1}}
                ).obj
              ]
            ).obj
          ]
        }
    )
      
  def trigger_function(self):
    trigger_func = McFunction(
      f'advancement revoke @s only {self.get_resource_location()}',
      "tellraw @a[tag=debug] [{selector:'@s'},{text:' joined the world'}]",
      f'execute if score @s {self.LeaveGameCountObjective.name} matches 1.. run scoreboard players add @s {self.LeaveGameCountObjective.name} 1',
      f'scoreboard players set @s {self.LeaveGameObjective.name} 0',
    )
    return trigger_func
  
player_join_world_event = PlayerJoinWorldEvent()
player_tick_event = PlayerTickEvent()

class PlayerEventsManager(CubiEventsManager):
  def __init__(self):
    super().__init__()
    self.register(player_join_world_event)
    self.register(player_tick_event)

server_events = ServerEventsManager()
player_events = PlayerEventsManager()

class CubiEventPack(Pack):
  def __init__(self):
    super().__init__('TestPack')
    
    self.data = {
      NAMESPACE_EVENT: {
        'advancement': {},
        'function': {}
      },
      VANILLA_NAMESPACE: {
        'tags': {
          'function': {
            'load.json': json.dumps({
              'values': [ f"{NAMESPACE_EVENT}:event_trigger/load" ]
            }, indent=2),
            'tick.json': json.dumps({
              'values': [ f"{NAMESPACE_EVENT}:event_trigger/tick" ]
            }, indent=2)
          }
        }
      }
    }
    
    self.pack_mcmeta['pack']['description'] = 'cubi event dirver'
    
  def add_advancements(self):
    adv = {
      'event_trigger': {
        'player': player_events.get_trigger_advancements()
      }
    }
    adv['event_trigger'].update(server_events.get_trigger_advancements())
    return adv
  
  def add_functions(self):
    func = {
      'event_trigger': {
        'player': player_events.get_trigger_functions()
      }
    }
    func['event_trigger'].update(server_events.get_trigger_functions())
    return func

test_pack = CubiEventPack()
test_pack.gen('./', NAMESPACE_EVENT)

