keyStroke: anEvent
	"Handle a keystroke event."
	anEvent hand anyButtonPressed ifTrue: [ ^self ].
	self scrollPane ifNotNil: [ :sp | (sp scrollByKeyboard: anEvent) ifTrue: [^self] ].
	anEvent isUserInterrupt ifTrue: [^self].
	self handleEdit: [ self editor keystroke: anEvent ].
	self scrollSelectionIntoView: nil