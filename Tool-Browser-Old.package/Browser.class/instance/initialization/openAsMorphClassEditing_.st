openAsMorphClassEditing: editString
	"Create a pluggable version a Browser on just a single class."
	| window dragNDropFlag hSepFrac switchHeight mySingletonClassList |

	window := (SystemWindow labelled: 'later') model: self.
	dragNDropFlag := true.
	hSepFrac := 0.3.
	switchHeight := 25.
	mySingletonClassList := PluggableListMorph on: self list: #classListSingleton
			selected: #indexIsOne changeSelected: #indexIsOne:
			menu: #classListMenu:shifted: keystroke: #classListKey:from:.
	mySingletonClassList enableDragNDrop: dragNDropFlag.

	self 
		addLowerPanesTo: window 
		at: (0@hSepFrac corner: 1@1) 
		with: editString.
	window 
		addMorph: mySingletonClassList
		fullFrame: ((0@0 corner: 0.5@0) asLayoutFrame bottomOffset: switchHeight).
	
	self 
		addMorphicSwitchesTo: window 
		at: ((0.5@0 corner: 1.0@0) asLayoutFrame bottomOffset: switchHeight).

	window 
		addMorph: self buildMorphicMessageCatList
		fullFrame: ((0@0 corner: 0.5@hSepFrac) asLayoutFrame topOffset: switchHeight).

	window 
		addMorph: self buildMorphicMessageList
		fullFrame: ((0.5@0 corner: 1.0@hSepFrac) asLayoutFrame topOffset: switchHeight).

	window setUpdatablePanesFrom: #(messageCategoryList messageList).
	^ window