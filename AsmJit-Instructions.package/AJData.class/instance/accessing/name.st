name
	name ifNotNil: [ ^ name ].
	
	"standard data sections"
	self is8 ifTrue: [ ^ 'db' ].
	self is16 ifTrue: [ ^ 'dw' ].
	self is32 ifTrue: [ ^ 'dd' ].