from pathlib import Path

def process_single_mcfunction_file(file_path):
  last_command_line = ''
  connect_flag = False

  file_lines = ['']
  with open(file_path, 'r', encoding='utf-8') as file:
    for line_num, line in enumerate(file, 1):  # 按行读取，带行号
      line = line.strip()
      file_lines.append(line)
  
  for idx in range(0, len(file_lines)):
     if file_lines[idx].startswith('#@'):
        compile_nodes = file_lines[idx][2:].split()
        compile_head = compile_nodes[0]
        compile_args = compile_nodes[1:]
        print(f'编译字 = {compile_head}，参数 = {[str(x) for x in compile_args]}')
        if compile_head == '替换':
          if idx < len(file_lines):
             print(file_lines[idx + 1])
             file_lines[idx + 1] = file_lines[idx + 1].replace(compile_args[0], compile_args[1])
          else:
             print("警告：无法替换空行")

  with open(file_path, 'w', encoding='utf-8') as file:
    file_lines = file_lines[1:]
    file.write('\n'.join(file_lines))
          

def process_mcfunction_files(directory):
  for file_path in Path(directory).rglob("*.mcfunction"):  # 递归匹配.mcfunction文件
    try:
        process_single_mcfunction_file(file_path)
    except UnicodeDecodeError:
        print(f"警告: 文件 {file_path} 编码非UTF-8，跳过处理")
    except PermissionError:
        print(f"警告: 无权限读取文件 {file_path}")

# 示例调用
process_mcfunction_files("cubi-datapack/cubi_event_driver")