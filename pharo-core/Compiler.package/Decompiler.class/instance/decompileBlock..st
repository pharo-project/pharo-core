public access
decompileBlock: aBlock 
	"Decompile aBlock, returning the result as a BlockNode.  
	Show temp names from source if available."
	"Decompiler new decompileBlock: [3 + 4]"
	| startpc end homeClass blockNode methodNode home |
	(home := aBlock home) ifNil: [^ nil].
	method := home method.
	(homeClass := home methodClass) == #unknown ifTrue: [^ nil].
	aBlock isClosure ifTrue:
		[(methodNode := [method decompileWithTemps] ifError: [method decompile])
			ifNil: [^nil]
			ifNotNil: [methodNode nodesDo: [:node| node pc = aBlock startpc ifTrue: [^node]]].
		 ^self error: 'cannot find block node matching aBlock'].
	constructor := self constructorForMethod: aBlock method.
	
	self withTempNames: method methodNode tempNames.

	self initSymbols: homeClass.
	startpc := aBlock startpc.
	end := aBlock endPC.
	stack := OrderedCollection new: method frameSize.
	lastJumpIfPcStack := OrderedCollection new.
	caseExits := OrderedCollection new.
	statements := OrderedCollection new: 20.
	super method: method pc: startpc - 5.
	blockNode := self blockTo: end.
	stack isEmpty ifFalse: [self error: 'stack not empty'].
	^blockNode statements first