buildPreferenceDropList: aWindow

	^ DropListMorph new
			useSelectionIndex: false;
			wrapSelector: #wrapPreference:;
			
			on: self 
			list: #getPreferencesList
			selected: #preference
			changeSelected: #preference:;
			
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			
			hResizing: #rigid;
			width: 125;
			yourself