render: aDropListPresentation
 
	listModel:= GLMDropListModel new glamourPresentation: aDropListPresentation.
	"When the morph changes, we want to update the glamour model"
	listModel announcer on: GLMDropDownListMorphSelectionChanged do: [ :ann | 
		aDropListPresentation selectedIndex: ann selectionIndex.
		aDropListPresentation selection: ann selectionValue ].
	listModel selectionIndex: aDropListPresentation selectedIndex.
	dropDownMorph := (MorphDropListMorph
			on: listModel
			list: #list
			selected: #selectionIndex
			changeSelected: #selectionIndex:
			useIndex: true )
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	aDropListPresentation on: GLMContextChanged send: #actOnContextChanged: to: self.
	aDropListPresentation on: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.
	^ dropDownMorph
	