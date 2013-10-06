selectedObject: anObject
	"Sets the selectedElement of the inspector to anObject. If anObject is not in the list, then sets the selectedElement to 1"

	list setSelectedIndex: 1.
	list listItems withIndexDo: [ :item :index | 
		item value == anObject 
			ifTrue: [ list setSelectedIndex: index ] ]