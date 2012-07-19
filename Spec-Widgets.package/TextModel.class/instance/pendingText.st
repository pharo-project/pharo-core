protocol
pendingText
	<api: #inspect>
	"Return the current pending text"

	self widget
		ifNil: [ ^ self getText ]
		ifNotNil: [:w |  ^ w text ]