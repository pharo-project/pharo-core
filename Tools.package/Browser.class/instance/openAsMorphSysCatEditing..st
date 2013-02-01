initialization
openAsMorphSysCatEditing: editString
	"Create a pluggable version of all the views for a Browser, including views and controllers."
	| window hSepFrac switchHeight mySingletonList |

	window := (SystemWindow labelled: 'later') model: self.
	hSepFrac := 0.30.
	switchHeight := 25.
	mySingletonList := PluggableListMorph on: self list: #systemCategorySingleton
			selected: #indexIsOne changeSelected: #indexIsOne:
			menu: #systemCatSingletonMenu: keystroke: #systemCatSingletonKey:from:.
 	mySingletonList enableDragNDrop: true.
	mySingletonList hideScrollBarsIndefinitely.
	window 
		addMorph: mySingletonList
		fullFrame: (  (0@0 corner: 1@0) asLayoutFrame bottomOffset: switchHeight).	

	self 
		addClassAndSwitchesTo: window 
		at: (0@0 corner: 0.3333@hSepFrac)
		plus: switchHeight.

	window 
		addMorph: self buildMorphicMessageCatList
		fullFrame: ( (0.3333@0 corner: 0.6666@hSepFrac) asLayoutFrame topOffset: switchHeight).

	window 
		addMorph: self buildMorphicMessageList
		fullFrame: ( (0.6666@0 corner: 1@hSepFrac) asLayoutFrame  topOffset: switchHeight).

	self 
		addLowerPanesTo: window 
		at: (0@hSepFrac corner: 1@1) 
		with: editString.

	window setUpdatablePanesFrom: #( classList messageCategoryList messageList).
	^ window