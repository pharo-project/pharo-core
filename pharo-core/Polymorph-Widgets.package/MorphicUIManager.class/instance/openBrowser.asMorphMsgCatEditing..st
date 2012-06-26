ui requests
openBrowser: aBrowser asMorphMsgCatEditing: editString
	"Create a pluggable version a Browser on just a message category."

	| window hSepFrac |
	window := (SystemWindow labelled: 'later') model: aBrowser.
	hSepFrac := 0.3.
	window 
		addMorph: ((PluggableListMorph on: aBrowser list: #messageCatListSingleton
			selected: #indexIsOne changeSelected: #indexIsOne:
			menu: #messageCategoryMenu:) enableDragNDrop: true)
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 1@0) 
				offsets: (0@0 corner: 0@25)
		).
	window 
		addMorph: aBrowser buildMorphicMessageList
		fullFrame: (
			LayoutFrame 
				fractions: (0@0 corner: 1@hSepFrac) 
				offsets: (0@25 corner: 0@0)
		).

	aBrowser 
		addLowerPanesTo: window 
		at: (0@hSepFrac corner: 1@1) 
		with: editString.
	window setUpdatablePanesFrom: #(messageCatListSingleton messageList).
	^ window