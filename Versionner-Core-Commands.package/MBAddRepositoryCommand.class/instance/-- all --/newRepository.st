newRepository
	"Create a new monticello repository"
	| types index |
	types := MCRepository allConcreteSubclasses asArray.
	index := self uiManager chooseFrom: (types collect: [:ea | ea description])
				title: 'Repository type:'.
	^ index = 0 ifFalse: [(types at: index) perform: #morphicConfigure]