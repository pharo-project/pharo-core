ui requests
openBrowser: aBrowser asMorphClassEditing: editString
	"Create a pluggable version a Browser on just a single class."
	| window dragNDropFlag hSepFrac switchHeight mySingletonClassList |

	window := (SystemWindow labelled: 'later') model: aBrowser.
	dragNDropFlag := true.
	hSepFrac := 0.3.
	switchHeight := 25.
	mySingletonClassList := PluggableListMorph on: aBrowser list: #classListSingleton
			selected: #indexIsOne changeSelected: #indexIsOne:
			menu: #classListMenu:shifted: keystroke: #classListKey:from:.
	mySingletonClassList enableDragNDrop: dragNDropFlag.

	aBrowser 
		addLowerPanesTo: window 
		at: (0@hSepFrac corner: 1@1) 
		with: editString.
	window 
		addMorph: mySingletonClassList
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 0.5@0) 
				offsets: (0@0 corner: 0@switchHeight)
		).
	
	aBrowser 
		addMorphicSwitchesTo: window 
		at: (
			LayoutFrame 
				fractions: (0.5@0 corner: 1.0@0) 
				offsets: (0@0 corner: 0@switchHeight)
		).

	window 
		addMorph: aBrowser buildMorphicMessageCatList
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 0.5@hSepFrac) 
				offsets: (0@switchHeight corner: 0@0)
		).

	window 
		addMorph: aBrowser buildMorphicMessageList
		fullFrame: (
			LayoutFrame 
				fractions: (0.5@0 corner: 1.0@hSepFrac) 
				offsets: (0@switchHeight corner: 0@0)
		).

	window setUpdatablePanesFrom: #(messageCategoryList messageList).
	^ window