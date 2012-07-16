class list
currentClassName: index

	currentClassName := self classList at: index ifAbsent: [ nil ].
	currentSelector := nil.	"fix by wod"
	self changed: #currentClassName.
	self changed: #messageList.
	self setContents.
	self contentsChanged.