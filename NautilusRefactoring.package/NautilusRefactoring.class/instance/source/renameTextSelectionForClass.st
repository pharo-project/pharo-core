renameTextSelectionForClass
	| selectedInterval selection class |
	
	class := self model selectedClass.
	selection := self model sourceTextArea selectedContents asString.
	selectedInterval := self model sourceTextArea selectionInterval.
	
	selectedInterval isEmpty 				ifTrue: [ ^ self model sourceTextArea flash ].
	(selection includes: Character space) 	ifTrue: [ ^ self model sourceTextArea flash ].
		
	"Try to rename the superclass"
	selectedInterval first = 1
		ifTrue: [ self changeSuperclassOf: class ].
		
	"Rename the selected class"
	selection = class name
		ifTrue: [ self renameClass: class ].
		
	"Rename a variable"
	self renameVariable: selection.