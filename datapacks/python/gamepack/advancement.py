from gamepack.pack import Pack
import json

class Advancement:
  def __init__(self, json_: dict | str, as_path = False):
    if isinstance(json_, str):
      if as_path:
        with open(json_, 'r', encoding='utf-8') as adv_file:
          self.content = json.load(adv_file)
      else:
        self.content = json.loads(json_)
    else:
      self.content = json_
    
  def gen(self, out_path: str, indent_ = 2):
    with open(out_path + '.json', mode='w+', encoding='utf-8') as file:
      file.write(json.dumps(self.content, indent=indent_))

  
  
  