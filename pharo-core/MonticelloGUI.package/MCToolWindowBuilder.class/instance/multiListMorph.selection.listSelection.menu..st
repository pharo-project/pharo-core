as yet unclassified
multiListMorph: listSymbol selection: selectionSymbol listSelection: listSelectionSymbol menu: menuSymbol
	| list |
	list := builder pluggableMultiSelectionListSpec new.
	list 
		model: tool;
		list: listSymbol; 
		getIndex: selectionSymbol; 
		setIndex: (selectionSymbol, ':') asSymbol;
		getSelectionList: listSelectionSymbol;
		setSelectionList: (listSelectionSymbol, 'put:') asSymbol;
		frame: currentFrame.
	menuSymbol ifNotNil: [list menu: menuSymbol].
	window children add: list
