environAt: index
	| address |
	address := NBExternalAddress value: (self environ nbUInt32AtOffset: index-1 * 4).
	address isNull ifTrue: [ ^ nil ].
	^ address readString