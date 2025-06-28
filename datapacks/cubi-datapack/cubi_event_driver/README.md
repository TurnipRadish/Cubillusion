# 幻方 - 事件驱动器

该模块主要用于构建事件抽象层。

## 层级

* 事件触发层（魔咒、进度）
  * 事件层

## 设计模式

通过`custom_data`数据组件添加伪数据组件`cubi:event_trigger`，定义该物品在什么事件下触发什么函数。

## 玩家事件

### 快捷栏监听事件

快捷栏变动时，触发函数`cubi:event/player/changing_hotbar`，输出当前快捷栏槽位变化量到记分板`cubi.roller_dir`

![alt text](<Cubi Hotbar Changing.gif>)

### 移动事件

玩家走动时，触发函数`cubi:event/player/walking`。

玩家疾跑时，触发函数`cubi:event/player/sprinting`。

### 按键输入事件

检测前后左右跳跃潜行。每个动作都可用谓词检测，比如可用`cubi:player/is_jumping`来检测玩家按下跳跃键。每个动作都有相应的触发函数，比如按下前进键时触发函数`cubi:event/player/input/forward`。

### 物品使用事件

右键使用物品时（包括带有`consumable`组件的物品），触发物品使用事件函数：

* `cubi:event/player/using_item/start`：开始使用物品
* `cubi:event/player/using_item/stop`：停止使用物品

在使用物品时，玩家带有标签`cubi.using_item`。

检测正在使用物品的玩家：

```mcfunction
execute if score @p[tag=cubi.using_item]
```
