removeSelections
	"Remove the selected items from the receiver."

	| newChangeList newList |
	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.
	1 to: changeList size do:
		[:i | (listSelections at: i) ifFalse:
			[newChangeList add: (changeList at: i).
			newList add: (list at: i)]].
	self refreshNewList: newChangeList andList: newList

	