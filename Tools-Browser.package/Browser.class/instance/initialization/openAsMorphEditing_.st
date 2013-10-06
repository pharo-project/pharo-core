openAsMorphEditing: editString
	"Create a pluggable version of all the morphs for a Browser in Morphic"
	| window hSepFrac |

	hSepFrac := 0.4.
	window := (SystemWindow labelled: 'later') model: self.

		
	window 
		addMorph: self buildMorphicSystemCatList
		frame: (0@0 corner: 0.25@hSepFrac).
		
	self 
		addClassAndSwitchesTo: window 
		at: (0.25@0 corner: 0.5@hSepFrac)
		plus: 0.
		
	window 
		addMorph: self buildMorphicMessageCatList
		frame: (0.5@0 extent: 0.25@hSepFrac).
		
	window addMorph: self buildMorphicMessageList
		frame: (0.75@0 extent: 0.25@hSepFrac).

	self 
			addLowerPanesTo: window 
			at: (0@hSepFrac corner: 1@1) 
			with: editString.

	window setUpdatablePanesFrom: #(systemCategoryList classList messageCategoryList messageList).
	^ window