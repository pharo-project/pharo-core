accessing method dictionary
selectorsWithArgs: numberOfArgs
	"Return all selectors defined in this class that take this number of arguments.  Could use String.keywords.  Could see how compiler does this."

	| list |
	list := OrderedCollection new.
	self selectorsDo: [:aSel | | num | 
		num := aSel count: [:char | char == $:].
		num = 0 ifTrue: [aSel last isLetter ifFalse: [num := 1]].
		num = numberOfArgs ifTrue: [list add: aSel]].
	^ list