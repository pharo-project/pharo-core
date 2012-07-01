accessing
contents

	(item customizeExplorerContents) ifTrue: [^item explorerContents].
	"For all others, show named vars first, then indexed vars"
	^(item class allInstVarNames asOrderedCollection withIndexCollect: [:each :index |
		self class
			with: (item instVarAt: index)
			name: each
			model: item
			parent: self]) ,
	((1 to: item basicSize) collect: [:index |
		self class
			with: (item basicAt: index)
			name: index printString
			model: item
			parent: self])