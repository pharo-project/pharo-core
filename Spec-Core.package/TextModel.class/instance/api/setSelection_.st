setSelection: anInterval
	<api: #st getter: #getSelection>
	"Set the text selection without changing the readSelectionBlock"

	selection ifNotNil: [: holder | holder value: anInterval ]