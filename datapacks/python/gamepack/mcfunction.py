from gamepack.command_execute import CommandExecute

class McFunction:
  def __init__(self, *args):
    self.content = args
  
  def add_lines(self, *lines):
    self.content += lines

  def gen(self, out_path: str):
    self.lines = []

    for cmd in self.content:
      if isinstance(cmd, CommandExecute):
        self.lines.append(str(cmd))
      elif isinstance(cmd, str):
        self.lines.append(cmd)

    with open(out_path + '.mcfunction', mode='w+', encoding='utf-8') as file:
      file.write('\n'.join(self.lines))
