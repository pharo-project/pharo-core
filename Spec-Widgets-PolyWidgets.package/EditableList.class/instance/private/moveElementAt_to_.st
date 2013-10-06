moveElementAt: index to: newIndex
	| elementToMove orderedList |
	
	(newIndex < 1 or: [ newIndex > list getItems size ]) ifTrue: [ ^self ].
	
	elementToMove := list getItems at: index.	
	orderedList := list getItems asOrderedCollection
		removeAt: index;
		add: elementToMove beforeIndex: newIndex;
		yourself.
	self list: orderedList.
	self list setSelectedIndex: newIndex.