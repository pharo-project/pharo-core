accessing
originalIndex

	| methodReference |
	self level = 1
		ifTrue: [
			self model level = 2
				ifTrue: [methodReference := (self childrenItems first)].
			self model level = 3
				ifTrue: [ methodReference := (self dictionary associations first value first).]]
		ifFalse: [
			methodReference := (self childrenItems first)].
	^self model originalIndex: methodReference
	