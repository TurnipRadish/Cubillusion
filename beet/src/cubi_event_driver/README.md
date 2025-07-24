# 幻方 - 事件驱动器

该模块主要用于构建事件抽象层。

## 层级

* 事件触发层（魔咒、进度、触发函数）：引入事件的触发方式、激活方式。
  * 事件层：引入触发事件的对象环境，提供可直接利用的命令上下文。

## 设计模式

组件模式：通过`custom_data`数据组件添加伪数据组件，在事件源到达目标后获取伪数据组件数据并决策之后的行为。

* 伪数据组件：`cubi:event_trigger`，定义该物品、实体在什么事件下触发什么函数。对于实体，该组件应设置在实体的`data`标签中。

## 玩家事件

所有玩家事件被激活时，首个上下文中的执行实体和执行位置均为触发事件的玩家。

### 快捷栏监听事件

* 触发函数：`cubi:event/player/changing_hotbar`

快捷栏变动时触发，输出当前快捷栏槽位变化量到记分板`cubi.roller_dir`

![alt text](<Cubi Hotbar Changing.gif>)

### 伤害实体

* 触发函数：`cubi:event/player/hurt_entity`

通过进度无条件触发。

### 与交互实体交互

* 触发函数：`cubi:event/player/interacted_with_interaction`

通过进度检测到与交互实体交互后触发。

### 在方块上使用物品

* 触发函数：`cubi:event/player/interacted_with_interaction`

通过进度无条件触发。

### 杀死实体

* 触发函数：`cubi:event/player/killed_entity`

通过进度无条件触发。

### 玩家载入世界后

* 触发函数：`cubi:event/player/load`

通过初始加载函数`cubi:load`延迟调用以引入玩家上下文。

### 放置物品到方块上

* 触发函数`cubi:event/player/placed_item_on_block`

通过`cubi:event_trigger`组件绑定事件`cubi:placed_item_on_block`后触发。

### 射线抵达终点

* 触发函数`cubi:event/player/raycast_end`

通过：

```mcfunction
function cubi:raycast/start
```

启动射线后，射线结束后调用`cubi:raycast/end`触发该事件。

### 合成配方

* 触发函数`cubi:event/recipe_crafted`

玩家合成木棍后触发。

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
