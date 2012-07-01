as yet unclassified
treeMorph: listSymbol selection: selectionSymbol menu: menuSymbol
	| tree |
	tree := builder pluggableTreeSpec new.
	tree 
		model: tool;
		roots: listSymbol;
		label: (listSymbol , 'Label:') asSymbol;
		getChildren: (listSymbol , 'Children:') asSymbol;
		hasChildren: (listSymbol , 'HasChildren:') asSymbol;
		setSelected: (selectionSymbol , ':') asSymbol;
		getSelectedPath: (listSymbol , 'Path') asSymbol;
		menu: menuSymbol;
		frame: currentFrame.
	window children add: tree