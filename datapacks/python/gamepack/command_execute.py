class Align:
  xyz = 'xyz'

class Anchor:
  eyes = 'eyes'
  feet = 'feet'

class EntitySelector:
  def __init__(self):
    pass

class Score:
  def __init__(self):
    pass
  
  def score_matches(holder: str, objective: str, range: str):
    return f'{holder} {objective} matches {range}'

class CommandExecute:
  def __init__(self):
    self.sections = ['execute']

  def modify(
    self,
    align: str | Align = None,
    anchored: str | Anchor = None,
    as_: str = None,
    at = None,
    facing = None,
    in_ = None,
    on = None,
    positioned = None,
    rotated = None,
    summon = None
  ):
    if align:
      self.sections.append(f'align {align}')
    if anchored:
      self.sections.append(f'anchored {anchored}')
    if as_:
      self.sections.append(f'as {as_}')
    if at:
      self.sections.append(f'at {at}')
    if facing:
      self.sections.append(f'facing {facing}')
    if in_:
      self.sections.append(f'in {in_}')
    if on:
      self.sections.append(f'on {on}')
    if positioned:
      self.sections.append(f'positioned {positioned}')
    if rotated:
      self.sections.append(f'rotated {rotated}')
    if summon:
      self.sections.append(f'summon {summon}')
  
    return self
  
  def unless(self):
    self.sections.append('unless')
    return self
  
  def if_(self):
    self.sections.append('if')
    return self
  
  def if_inverted(self, inverted: bool):
    if inverted:
      self.sections.append('unless')
    else:
      self.sections.append('if')
  
  def condition(
    self,
    inverted = False,
    block: str = None,
    data: str = None,
    entity: str = None,
    function: str = None,
    items: str = None,
    predicate: str = None,
    score: str | Score = None
  ):
    
    if block:
      self.if_inverted(inverted)
      self.sections.append(f'block {block}')
    if data:
      self.if_inverted(inverted)
      self.sections.append(f'data {data}')
    if entity:
      self.if_inverted(inverted)
      self.sections.append(f'entity {entity}')
    if function:
      self.if_inverted(inverted)
      self.sections.append(f'function {function}')
    if items:
      self.if_inverted(inverted)
      self.sections.append(f'items {items}')    
    if predicate:
      self.if_inverted(inverted)
      self.sections.append(f'predicate {predicate}')
    if score:
      self.if_inverted(inverted)
      self.sections.append(f'score {score}')

    return self
  
  def run(self, command: str):
    self.sections.append(f'run {command}')
    return self

  def __str__(self):
    return ' '.join(self.sections)

execute = CommandExecute()
