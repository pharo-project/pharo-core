protocol
setTitle: aTitle
	title := aTitle.
	self window updateTitle 
	"self window
		ifNotNil: [:w | w title: aTitle ]"