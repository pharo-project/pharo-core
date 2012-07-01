as yet unclassified
treeMorph
	^ (self treeMorphClass on: self)
		rowInset: 2;
		columnInset: 4;
		autoDeselection: true;
		getMenuSelector:#menu:shifted:;
		keystrokeActionSelector: #keyStroke:from:;
		treeLineWidth: 1;
		treeLineDashes: {5. 1};
		lineColorBlock: [:node | {Color gray. Color orange. Color brown. Color magenta. Color blue} at: ((node level \\ 5) + 1)];
		doubleClickSelector: #browseItem;
		rowColorForEven: Color white darker;
		yourself
