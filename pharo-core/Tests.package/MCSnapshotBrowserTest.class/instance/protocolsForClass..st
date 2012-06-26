private
protocolsForClass: aClass
	| protocols |
	protocols := aClass organization categories.
	protocols size > 1 ifTrue: [protocols := protocols copyWith: '-- all --'].
	^ protocols.