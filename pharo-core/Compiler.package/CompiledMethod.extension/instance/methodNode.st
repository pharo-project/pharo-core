*Compiler-Kernel
methodNode
	"Return the parse tree that represents self"
	| aClass source |
	aClass := self methodClass.
	source := self sourceCode.
	^(aClass parserClass new
		parse: source class: aClass)
			sourceText: source;
			yourself