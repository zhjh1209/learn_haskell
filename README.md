# learn haskell
## some demo source code

### newtype type data 何时使用
如果你只是希望你的 type signature 看起来比较干净，你可以只需要 type synonym。
如果你想要将现有的型别包起来并定义成一个 type class 的 instance，你可以尝试
使用 newtype。如果你想要定义完全新的型别，那你应该使用  data  关键字。
