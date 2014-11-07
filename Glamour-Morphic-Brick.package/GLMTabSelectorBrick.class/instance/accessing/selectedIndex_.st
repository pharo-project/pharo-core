selectedIndex: index
	"Set the value of selectedIndex"

	|oldIndex|
	selectedIndex == index ifTrue: [^self].
	oldIndex := selectedIndex.
	selectedIndex := (index min: self tabs size).
	self updateTabs.
	self changed: #selectedIndex with: oldIndex