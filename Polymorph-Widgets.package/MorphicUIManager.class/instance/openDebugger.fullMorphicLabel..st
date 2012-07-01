services
openDebugger: aDebugger fullMorphicLabel: aLabelString
	"Open a full morphic debugger with the given label"

	| window aListMorph oldContextStackIndex label |
	oldContextStackIndex := aDebugger contextStackIndex.
	aDebugger expandStack. "Sets contextStackIndex to zero."
	
	label := aDebugger isPostMortem 
					ifTrue: [ 'PostMortem: ', aLabelString ]
					ifFalse: [ aLabelString ] .
	window := (SystemWindow labelled: label) model: aDebugger.
	aListMorph := self buildListOfElementsFor: aDebugger.
	aListMorph menuTitleSelector: #messageListSelectorTitle.
	window 
		addMorph: aListMorph
		frame: (0@0 corner: 1@0.25).

	aDebugger addLowerPanesTo: window at: (0@0.25 corner: 1@0.8) with: nil.

	window 
		addMorph: (self buildListOfFieldsFor: aDebugger)
			"For doubleClick to work best disable autoDeselect"	
		frame: (0@0.8 corner: 0.2@1).
		
	window
		addMorph: (self buildFieldInspectorFor: aDebugger)
		frame: (0.2@0.8 corner: 0.5@1).
		
	window
		addMorph: (self buildListOfContextFor: aDebugger)
		frame: (0.5@0.8 corner: 0.7@1).
		
	window
		addMorph: (self buildContextInspectorFor: aDebugger)
		frame: (0.7@0.8 corner: 1@1).
		
	window openInWorld.
	window center: Display center.
	aDebugger toggleContextStackIndex: oldContextStackIndex.
	^ window