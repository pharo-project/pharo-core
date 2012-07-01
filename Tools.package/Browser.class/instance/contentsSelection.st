accessing
contentsSelection
	"Return the interval of text in the code pane to select when I set the pane's contents"

	messageCategoryListIndex > 0 & (messageListIndex = 0)
		ifTrue: [^ 1 to: 500]	"entire empty method template"
		ifFalse: [^ 1 to: 0]		"null selection"