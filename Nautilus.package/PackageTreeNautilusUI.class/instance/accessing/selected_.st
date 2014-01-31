selected: aNode
	| selections |

	selections := aNode selectedNodes collect: [ :each |each asNautilusSelection].
	"leave if selection contains no node that isn't already selected"
	(selections contains:[:each | (self isSelectedPackage:each) not]) ifFalse:[^ self].
	
	self clearPackageSelections.
	self resetShowHierarchy.

	selections do:[: each |  self selectedPackageWithoutChangingSelection: each].
	
	self changed: #selected.
	self changed: #currentHistoryIndex.
