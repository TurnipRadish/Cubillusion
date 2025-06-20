# 幻方

幻方（Cubillusion）是该项目的名称，它是一个面向原版的数据包和资源包开发集，主要目的是为原版制作者提供轻量级的原版模组开发方案。目前项目处于初级建设阶段。

* 开发工具：VSCode + DHP Spyglass插件。
* Minecraft环境：Java原版1.21.6及以上。

## 项目结构

本项目整体为一个Minecraft Java版存档。其中主要的开发目录为`datapacks`和`resourcepacks`，其他文件则可能均为游戏自动生成的文件或为开发环境提供便利的文件。

### datapacks

项目中的所有数据包都应放置在`datapacks`文件夹中。

幻方的主数据包为`cubi-datapack`。

幻方数据包目前主要通过主数据包中`pack.mcmeta`的`overlays`字段来组织内部模块。每个模块即存在于幻方主数据包`cubi-datapack`下的一个以`cubi`开头的文件夹。

当前内置如下模块：

* 幻方基础模块`cubi_base`
* 幻方事件驱动模块`cubi_event_driver`
* 幻方测试模块`cubi_test`

可能你还看到了一些其他未在此列出的模块，这是因为这些模块还处于初级构建阶段，其尚未组成明确的组织结构或工作方式。

### resourcepacks

幻方的主资源包为`cubi-resourcepack`。

在原版中，这很可能是不正确的资源包目录。但是为了开发方便，我们需要声明，该项目的所有资源包相关文件都应存放于这里的`resourcepacks`文件夹中。

为了能够在你的计算机上正常运行并调试资源包内容，你可能需要创建符号链接或软连接以让游戏正常读取并加载内容。

在Windows11系统上，推荐你使用**目录连接**方式来关联到游戏资源包文件夹，比如：

```cmd
mklink /J "E:\MC\.minecraft\resourcepacks\cubi-rp" "E:\MC\.minecraft\saves\<您的存档名>\resourcepacks\cubi-resourcepack"
```

`E:\MC\.minecraft\resourcepacks\cubi-rp`应该被替换为你的游戏文件夹下的资源包目录，创建连接后，所显示在资源包选择界面的资源包名即`cubi-rp`，你也可以替换为你想要的名称。`E:\MC\.minecraft\saves\<您的存档名>\resourcepacks\cubi-resourcepack`则是该项目的主资源包，这里同样需要你确认是否为你的实际存档路径。

## 参与开发
### 安装
如果你愿意向该项目贡献代码，那么欢迎你参照如下步骤来构建开发环境：

* 使用Git或Githubdesktop等工具克隆该项目的全部文件。
* 运行Minecraft Java版1.21.6或者以上的版本。
* 在你的Minecraft游戏文件夹`.minecraft`中，找到`saves`文件夹，将包装了该项目全部文佳的包装文件夹放入其中。如果这一步正确执行，那么你将能够在游戏中看到该存档并可正常进入游戏。
* 使用VSCode，双击项目中的`cubi_workspace.code-workspace`文件，如果该文件工作正常，则将在VSCode中打开该项目的主要工作区。

如果你已经完成了上述步骤，那么恭喜你已经完成了该项目的基本配置。

### 提交更改

​分支规则：

* main：稳定版本（仅限合并）
* dev：开发测试分支
* feature/xxx：新功能分支（如 feature/custom-items）

提交规范：

```bash
git commit -m "feat: 添加自定义剑物品 #123"  # 新功能
git commit -m "fix: 修复任务进度不触发 #456" # Bug修复
```

你应通过**​GitHub Pull Request**提交变更，可能需要至少1名成员审核。
