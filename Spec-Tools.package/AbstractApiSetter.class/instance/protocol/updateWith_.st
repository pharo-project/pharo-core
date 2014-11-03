updateWith: aValue
	self isSetting
		ifTrue: [ ^ self ].
	self isSetting: true.
	self internUpdateWith: aValue.
	self isSetting: false