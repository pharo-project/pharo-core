items creation
buildNavigationList

	^ (DropListMorph
			on: self 
			list: #getHistoryList
			selected: #currentHistory
			changeSelected: #setHistory:)
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			wrapSelector: #wrapHistory:;
			ghostText: 'History Navigator';
			yourself