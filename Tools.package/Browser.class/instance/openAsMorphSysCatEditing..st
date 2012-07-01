initialization
openAsMorphSysCatEditing: editString
	"Create a pluggable version of all the views for a Browser, including views and controllers."
	^UIManager default openBrowser: self  asMorphSysCatEditing: editString
