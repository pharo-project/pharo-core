initialization
openAsMorphMessageEditing: editString
	"Create a pluggable version a Browser that shows just one message"
	^UIManager default openBrowser: self asMorphMessageEditing: editString