setUp
	tabs := LazyTabGroupMorph new.
	tabs addLazyPage: (PanelMorph new fillStyle: (SolidFillStyle color: Color red)) label: 'one'.
	tabs addLazyPage: (PanelMorph new fillStyle: (SolidFillStyle color: Color yellow)) label: (LabelMorph contents: 'two').
	window := tabs openInWindow.
