context stack (message list)
contextStackListWithMultiColumn
	"Answer the array of contexts."

	| classes separators selectors |

	^ (contextStackList collect: [:string || tokens |
		tokens := string subStrings: '>>'.
		{(self buildClassNameFor: tokens first). '  '. tokens second}]) inspect
	
	"classes := OrderedCollection new.
	selectors := OrderedCollection new.
	separators := OrderedCollection new.
	
	contextStackList do: [:string || tokens |
		tokens := string subStrings: '>>'.
		classes add: (self buildClassNameFor: tokens first).
		separators add: '  '.
		selectors add: tokens second ].
	^ { classes. separators. selectors }"