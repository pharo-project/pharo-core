menu actions
removeNonSelections
	"Remove the unselected items from the receiver."

	| newChangeList newList |
	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	1 to: changeList size do:
		[ :i | (listSelections at: i)
			ifTrue:
				[ newChangeList add: (changeList at: i).
				newList add: (list at: i) ]].
	newChangeList size = 0 
		ifTrue: [^ self inform: 'That would remove everything.
Why would you want to do that?'].
	
	self refreshNewList: newChangeList andList: newList.
	
	