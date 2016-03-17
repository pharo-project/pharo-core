step
	self wantsSteps ifFalse: [ ^ self ].
	self window ifNil: [ ^ self ].
	self window isActive ifFalse: [ ^ self ].
	(self window boundsInWorld containsRect: self boundsInWorld) ifFalse: [ ^ self ].
	self dataSource resetElements.
	self refresh.