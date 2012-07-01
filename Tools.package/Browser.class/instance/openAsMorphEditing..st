initialization
openAsMorphEditing: editString
	"Create a pluggable version of all the morphs for a Browser in Morphic"
	^UIManager default openBrowser: self asMorphEditing: editString