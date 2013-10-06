testBasicCode
	self assert: [ true ifTrue: [ nil ] ifFalse: [ 1 ]] value equals: nil.
	self assert: [ false ifTrue: [ nil ] ifFalse: [ 1 ]] value equals: 1.
	
	self assert: [ |a| a :=1. [ a < 10 ] whileTrue: [ a := a + 1]. a] value equals: 10.