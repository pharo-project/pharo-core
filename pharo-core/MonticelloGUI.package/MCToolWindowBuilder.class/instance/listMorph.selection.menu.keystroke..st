as yet unclassified
listMorph: listSymbol selection: selectionSymbol menu: menuSymbol keystroke: keystrokeSymbol
	| list |
	list := builder pluggableListSpec new.
	list 
		model: tool;
		list: listSymbol; 
		getIndex: selectionSymbol; 
		setIndex: (selectionSymbol, ':') asSymbol;
		frame: currentFrame.
	menuSymbol ifNotNil: [list menu: menuSymbol].
	keystrokeSymbol ifNotNil: [list keyPress: keystrokeSymbol].
	window children add: list
