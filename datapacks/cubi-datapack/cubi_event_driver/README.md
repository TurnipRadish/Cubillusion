# 幻方 - 事件驱动器

该模块主要用于构建事件抽象层。

## 层级

* 事件监听层（魔咒、进度）
  * 事件层
    * 触发层

## 快捷栏监听事件

快捷栏变动时，触发函数`cubi:event/player/changing_hotbar`，输出当前快捷栏槽位变化量到记分板`cubi.roller_dir`

![alt text](<Cubi Hotbar Changing.gif>)

## 移动事件

玩家走动时，触发函数`cubi:event/player/walking`。

玩家疾跑时，触发函数`cubi:event/player/sprinting`。
