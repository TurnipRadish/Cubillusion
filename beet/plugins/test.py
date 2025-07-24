import json

def replace_json_vars(template_path, replacements):
    with open(template_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    def process(obj):
        if isinstance(obj, dict):
            # 处理键名和键值：替换键名中的$，并递归处理键值
            return {
                replacements.get(k[1:], k) if isinstance(k, str) and k.startswith('$') else k: process(v)
                for k, v in obj.items()
            }
        elif isinstance(obj, list):
            return [process(item) for item in obj]
        elif isinstance(obj, str) and obj.startswith('$'):
            # 替换以$开头的字符串值
            return replacements.get(obj[1:], obj)
        return obj  # 非字符串或非$开头的值直接返回
    
    return process(data)

# 测试用例
replacements = {
    "key1": "custom_key", 
    "value1": "minecraft:custom_trigger"
}
result = replace_json_vars("./plugins/template.json", replacements)
print(result)  # 输出: {"custom_key": "minecraft:custom_trigger"}