pendingText: aText
	<api: #string getter: #pendingText>
	"Set the pending text. Do no accept it"

	self widget
		ifNil: [ self text: aText ]
		ifNotNil: [:w |
			w setText: aText.
			w hasUnacceptedEdits: true ]