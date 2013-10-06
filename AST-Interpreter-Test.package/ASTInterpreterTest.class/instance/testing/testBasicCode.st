testBasicCode
	self assert: (self interpret: '[ true ifTrue: [ nil ] ifFalse: [ 1 ]] value') equals: nil.
	self assert: (self interpret: '[ false ifTrue: [ nil ] ifFalse: [ 1 ]] value') = 1.
	
	self assert: (self interpret: '[ |a| a :=1. [ a < 10 ] whileTrue: [ a := a + 1]. a] value') = 10.