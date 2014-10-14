buildTextAreaButtonsColumn: aWindow

	| column |
	column := PanelMorph new.
	column 
		changeTableLayout;
		listDirection: #topToBottom.
		
		{    self buildBrowseInstVarsButton.
			self buildBrowseClassVarsButton} reverse do: [:each | column addMorph: each ].
	
	column 
		vResizing: #spaceFill;
		width: 24;
		hResizing: #rigid.
	
	^ column