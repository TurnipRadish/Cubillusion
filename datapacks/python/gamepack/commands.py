class Scoreboard:
  def __init__(self):
    pass
  
  class Objective:
    def __init__(self, name: str, critera: str, display_name: str = None):
      self.name = name
      self.critera = critera
      self.display_name = display_name
    
    def create(self) -> str:
      if self.display_name:
        return f'scoreboard objectives add {self.name} {self.critera} {self.display_name}'
      else:
        return f'scoreboard objectives add {self.name} {self.critera}'
