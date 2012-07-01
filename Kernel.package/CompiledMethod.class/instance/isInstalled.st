testing
isInstalled
	self methodClass ifNotNil:
		[:class|
		self selector ifNotNil:
			[:selector|
			^self == (class methodDict at: selector ifAbsent: [])]].
	^false