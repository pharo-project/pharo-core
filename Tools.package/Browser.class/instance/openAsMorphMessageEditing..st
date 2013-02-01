initialization
openAsMorphMessageEditing: editString
	"Create a pluggable version a Browser that shows just one message"
	| window mySingletonMessageList verticalOffset nominalFractions |
	window := (SystemWindow labelled: 'later') model: self.

	mySingletonMessageList := PluggableListMorph on: self list: #messageListSingleton
			selected: #indexIsOne changeSelected: #indexIsOne:
			menu: #messageListMenu:shifted:
			keystroke: #messageListKey:from:.
	mySingletonMessageList enableDragNDrop: true.
	verticalOffset := 25.
	nominalFractions := 0@0 corner: 1@0.
	window 
		addMorph: mySingletonMessageList
		fullFrame: (
			LayoutFrame 
				fractions: nominalFractions 
				offsets: (0@0 corner: 0@verticalOffset)
		).

	verticalOffset := self addOptionalAnnotationsTo: window at: nominalFractions plus: verticalOffset.
	verticalOffset := self addOptionalButtonsTo: window  at: nominalFractions plus: verticalOffset.

	window 
		addMorph: (self buildMorphicCodePaneWith: editString)
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 1@1) 
				offsets: (0@verticalOffset corner: 0@0)
		).

	^ window