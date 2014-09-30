testTabTitle
	| browser firstTabLabel |
	browser := GLMAccumulator new.
	browser
		show: [ :a | 
			a title: [ :x | x asString ].
			a list display: [ :x | $a to: x ] ].
	window := browser openOn: $d.
	firstTabLabel := self find: PanelMorph in: self tabGroup tabSelectorMorph.
	self assert: firstTabLabel submorphs size equals: 2.
	self assert: firstTabLabel submorphs first label text equals: 'd'.
	self find: MultistateButtonMorph in: firstTabLabel.