*Compiler-Kernel
decompile
	"Return the decompiled parse tree that represents self"

	|  class selector |
	class := self methodClass ifNil: [Object].
	selector := self selector ifNil: [self defaultSelector].
	^class decompilerClass new decompile: selector in: class method: self.