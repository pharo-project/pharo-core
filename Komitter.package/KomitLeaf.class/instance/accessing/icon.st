icon
	
	self content added ifTrue: [ ^ Smalltalk ui icons changeAddIcon ].
	self content modified ifTrue: [ ^ Smalltalk ui icons changeUpdateIcon ].
	self content removed ifTrue: [ ^ Smalltalk ui icons changeRemoveIcon ].
	
	^ nil