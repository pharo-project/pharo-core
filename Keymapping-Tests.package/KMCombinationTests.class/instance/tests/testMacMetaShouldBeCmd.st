testMacMetaShouldBeCmd
	OSPlatform current isMacOS ifFalse: [ ^ self skip ].
	self assert: $n meta equals: $n cmd.
	self assert: $n cmd equals: $n meta.
	self assert: $n meta shift equals: $n cmd shift.
	self assert: $n cmd shift equals: $n meta shift