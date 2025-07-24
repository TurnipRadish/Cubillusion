from beet import Context, Function
from pathlib import Path
import re

def document_function_extractor(ctx: Context):
    """提取cubi:event/player/下所有函数的文档内容并生成Markdown文件"""
    # 创建文档输出目录（位于构建缓存目录中，避免污染源码）
    output_dir = ctx.cache.path / "function_docs"
    output_dir.mkdir(exist_ok=True)
    
    # 获取所有匹配的函数文件
    function_paths = ctx.data.functions.match("cubi:event/player/*")
    
    for path in function_paths:
        function = ctx.data.functions[path]
        resource_path = path.replace(".mcfunction", "").replace(":", "/")  # 将命名空间冒号转为路径分隔符
        
        # 提取文档内容
        doc_content = extract_documentation(function.lines)
        
        # 生成Markdown文件路径（保留原始目录结构）
        md_path = output_dir / f"{resource_path}.md"
        md_path.parent.mkdir(parents=True, exist_ok=True)
        
        # 写入Markdown文件
        with open(md_path, "w", encoding="utf-8") as f:
            f.write(f"# `{resource_path}`\n\n```mcfunction\n{doc_content}\n```\n")
        
        # 在控制台显示生成日志（可选）
        print(f"Generated documentation: {md_path.relative_to(ctx.cache.path)}")

        with open(output_dir / "README.md", "w", encoding='utf-8') as f:
          f.write("# 函数文档索引\n\n")
          for path in sorted(function_paths):
              rel_path = path.replace(".mcfunction", "").replace(":", "/")
              f.write(f"- [{rel_path}]({rel_path}.md)\n")


def extract_documentation(lines: list[str]) -> str:
    """从函数代码中提取文档内容（保持不变）"""
    in_doc = False
    doc_lines = []
    doc_pattern = re.compile(r"#\s*文档\s*-\s*(开始|结束)")
    
    for line in lines:
        match = doc_pattern.search(line)
        if match:
            print(match)
            if match.group(1) == "开始":
                in_doc = True
            elif match.group(1) == "结束":
                in_doc = False
            continue
        
        if in_doc:
            doc_lines.append(line)
    
    return "\n".join(doc_lines).strip()

# 在beet.yaml中配置使用此插件
# pipeline:
#   - plugins.document_extractor.document_function_extractor