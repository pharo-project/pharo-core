menu commands
defsOfSelection
	"Open a browser on all defining references to the selected instance variable, if that's what currently selected. "
	| aClass sel |

	self selectionUnmodifiable ifTrue: [^ self changed: #flash].
	(aClass := self object class) isVariable ifTrue: [^ self changed: #flash].

	sel := aClass allInstVarNames at: self selectionIndex - 2.
	self systemNavigation  browseAllStoresInto: sel from: aClass