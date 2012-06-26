as yet unclassified
buildListMorph
	^  listMorph := PluggableListMorph new
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			on: self 
			list: #list
			selected: #listIndex
			changeSelected: #listIndex:
			menu: nil
			keystroke: nil;
			keystrokeSelector: #listKeystroke:;
			doubleClickSelector: #ok;
			yourself