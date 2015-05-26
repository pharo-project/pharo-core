keyStroke: evt
	"Handle a keystroke event."
	self scrollPane ifNotNil: [ :sp | (sp scrollByKeyboard: evt) ifTrue: [^self] ].
	evt isUserInterrupt ifTrue: [^self].
	self handleEdit: [ self editor keystroke: evt ].
	self scrollSelectionIntoView: nil