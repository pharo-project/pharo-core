view
open
	| window bar editor |
	window := (StandardWindow labelled: 'Method editor with shout') model: self.
	editor := window newTextEditorFor:  self getText:  #code setText: #code: getEnabled: nil. 
	window addMorph: (window newColumn: { window newRow: { self classSelector. self metaSwitch. self methodSelector}. editor} )
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	^ window openInWorld