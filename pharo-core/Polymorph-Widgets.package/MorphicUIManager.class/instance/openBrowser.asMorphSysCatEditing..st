ui requests
openBrowser: aBrowser asMorphSysCatEditing: editString
	"Create a pluggable version of all the views for a Browser, including views and controllers."
	| window hSepFrac switchHeight mySingletonList nextOffsets |

	window := (SystemWindow labelled: 'later') model: aBrowser.
	hSepFrac := 0.30.
	switchHeight := 25.
	mySingletonList := PluggableListMorph on: aBrowser list: #systemCategorySingleton
			selected: #indexIsOne changeSelected: #indexIsOne:
			menu: #systemCatSingletonMenu: keystroke: #systemCatSingletonKey:from:.
 	mySingletonList enableDragNDrop: true.
	mySingletonList hideScrollBarsIndefinitely.
	window 
		addMorph: mySingletonList
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 1@0) 
				offsets: (0@0  corner: 0@switchHeight)
		).	

	aBrowser 
		addClassAndSwitchesTo: window 
		at: (0@0 corner: 0.3333@hSepFrac)
		plus: switchHeight.

	nextOffsets := 0@switchHeight corner: 0@0.
	window 
		addMorph: aBrowser buildMorphicMessageCatList
		fullFrame: (
			LayoutFrame 
				fractions: (0.3333@0 corner: 0.6666@hSepFrac) 
				offsets: nextOffsets
		).	

	window 
		addMorph: aBrowser buildMorphicMessageList
		fullFrame: (
			LayoutFrame 
				fractions: (0.6666@0 corner: 1@hSepFrac) 
				offsets: nextOffsets
		).	

	aBrowser 
		addLowerPanesTo: window 
		at: (0@hSepFrac corner: 1@1) 
		with: editString.

	window setUpdatablePanesFrom: #( classList messageCategoryList messageList).
	^ window