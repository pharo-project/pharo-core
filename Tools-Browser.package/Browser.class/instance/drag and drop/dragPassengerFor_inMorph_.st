dragPassengerFor: item inMorph: dragSource 
	| transferType smn |
	(dragSource isKindOf: PluggableListMorph)
		ifFalse: [^nil].
	transferType := self dragTransferTypeForMorph: dragSource.
	transferType == #classList
		ifTrue: [^self selectedClass].
	transferType == #messageList
		ifFalse: [ ^nil ].
	smn := self selectedMessageName ifNil: [ ^nil ].
	(Smalltalk tools messageList isPseudoSelector: smn) ifTrue: [ ^nil ].

	^ self selectedClassOrMetaClass -> smn.
