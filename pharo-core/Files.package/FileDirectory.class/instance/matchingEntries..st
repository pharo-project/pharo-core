enumeration
matchingEntries: criteria 
	"Answer a list of directory entries which match the patternStrings within criteria.
	The patternStrings within criteria may consist of multiple patterns separated by ';'.
	Each pattern can include a '*' or '#' as wildcards - see String>>match:
	To match files recursively prepend '**/' in front of pattern.
	Examples:
	FileDirectory default matchingEntries: '*.log'.
	FileDirectory default matchingEntries: '*.#og'.
	FileDirectory default matchingEntries: '**/*.mcz'."
		
	| patterns isRecursive tokens |
	tokens := criteria findTokens: ';'.
	isRecursive := tokens anySatisfy: [:each | each beginsWith: '**/'].
	patterns := self determinePatternsWithin: tokens.
	^ OrderedCollection 
		streamContents: [:stream | 
			| todo |
			todo := OrderedCollection with: self.
			[todo size > 0]
				whileTrue: [
					| dir |
					dir := todo removeFirst.
					isRecursive	ifTrue: [dir directoryNames	do: [:n | todo add: (dir directoryNamed: n)]].
					stream nextPutAll: (dir entries
								select: [:each | each isDirectory
										ifTrue: [false]
										ifFalse: [patterns anySatisfy: [:pattern | pattern match: each name]]])]].