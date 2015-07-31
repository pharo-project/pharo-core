buildBrowseVariablesMorph
	^ LabelMorph new
		contents: 'Variables';
		enabled: self selectedClass isNotNil;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself