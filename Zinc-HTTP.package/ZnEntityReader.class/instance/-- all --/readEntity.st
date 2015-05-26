readEntity
	| entity |
	self canReadContent ifFalse: [ ^ nil ].
	self withDefaultUtf8Decoding: [ entity := self readEntityFromStream ].
	^ entity isEmpty
		ifTrue: [ nil ]
		ifFalse: [ entity ]    