buildDisplayDropList: aWindow

	^ DropListMorph new
			useSelectionIndex: false;
			wrapSelector: #wrapDropListItem:;
			
			on: self 
			list: #getDisplayList
			selected: #sortingSelector
			changeSelected: #sortingSelector:;
			
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			
			hResizing: #rigid;
			width: 150;
			setBalloonText: self sortingSelectorHelpText;
			yourself