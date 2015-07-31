buildBrowseScopedMorph
	^ LabelMorph new
		contents: 'Scoped';
		enabled: self selectedPackage isNotNil;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself