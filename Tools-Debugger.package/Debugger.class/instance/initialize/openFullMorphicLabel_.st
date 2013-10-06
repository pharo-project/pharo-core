openFullMorphicLabel: aLabelString
	"Open a full morphic debugger with the given label"

	"Open a full morphic debugger with the given label"

	| window aListMorph oldContextStackIndex label |
	oldContextStackIndex := self contextStackIndex.
	self expandStack. "Sets contextStackIndex to zero."
	
	label := self isPostMortem 
					ifTrue: [ 'PostMortem: ', aLabelString ]
					ifFalse: [ aLabelString ] .
	window := (SystemWindow labelled: label) model: self.
	aListMorph := self buildListOfElementsFor: self.
	aListMorph menuTitleSelector: #messageListSelectorTitle.
	window 
		addMorph: aListMorph
		frame: (0@0 corner: 1@0.25).

	self addLowerPanesTo: window at: (0@0.25 corner: 1@0.8) with: nil.

	window 
		addMorph: (self buildListOfFieldsFor: self)
			"For doubleClick to work best disable autoDeselect"	
		frame: (0@0.8 corner: 0.2@1).
		
	window
		addMorph: (self buildFieldInspectorFor: self)
		frame: (0.2@0.8 corner: 0.5@1).
		
	window
		addMorph: (self buildListOfContextFor: self)
		frame: (0.5@0.8 corner: 0.7@1).
		
	window
		addMorph: (self buildContextInspectorFor: self)
		frame: (0.7@0.8 corner: 1@1).
		
	window openInWorld.
	window center: Display center.
	self toggleContextStackIndex: oldContextStackIndex.
	self widget: window.
	^ window