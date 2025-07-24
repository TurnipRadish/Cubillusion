import json

class Predicate:
  def __init__(self):
    pass
  
  class AnyOf:
    Name = 'any_of'
    
    def __init__(self, terms: list = []):
      self.obj = {
        'condition': f'{self.Name}',
        'terms': terms,
      }
      
  class Inverted:
    Name = 'inverted'
    
    def __init__(self, term: dict = {}):
      self.obj = {
        'condition': f'{self.Name}',
        'term': term,
      }
  
  class EntityScores:
    Name = 'entity_scores'
    
    def __init__(self, entity = 'this', scores = None):
      self.obj = {
        'condition': f'{self.Name}',
        'entity': f'{entity}',
        'scores': scores if scores else {}
      }

    
    
    
    