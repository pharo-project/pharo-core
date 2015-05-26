initialize
	"Initialize a blank ChangeList.  Set the contentsSymbol to reflect whether diffs will be prettyPrinted or not"

	contentsSymbol := self defaultDiffsSymbol.
	changeList := OrderedCollection new.
	list := OrderedCollection new.
	listIndex := 0.
	super initialize