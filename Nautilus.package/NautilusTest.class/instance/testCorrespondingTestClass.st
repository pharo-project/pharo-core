tests
testCorrespondingTestClass
	self assert: (Behavior correspondingForTest == BehaviorTest).
	self assert: (TTCFont correspondingForTest == TTCFont).
	self assert: (BehaviorTest correspondingForTest == Behavior).