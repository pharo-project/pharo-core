selecting
contentsIsString
	"Hacked so contents empty when deselected and = long printString when item 2"

	^ (selectionIndex = 2) | (selectionIndex = 0)