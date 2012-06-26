class list
currentClassName: aString

	currentClassName := aString.
	currentSelector := nil.	"fix by wod"
	self changed: #currentClassName.
	self changed: #messageList.
	self setContents.
	self contentsChanged.