editing
setToAllowTextEdit
	"Set up the receiver so that it will be receptive to text editing, even if there is no putSelector provided"

	self setProperty: #okToTextEdit toValue: true