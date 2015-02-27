taskbarLabel
	"Answer the label to use for a taskbar button for the receiver."

	^ label isNil
		ifTrue: [ self labelString ]
		ifFalse: [ label contents asString ]