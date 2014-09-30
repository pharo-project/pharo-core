installKeyCombinationForPresentation: aPresentation onMorph: aMorph
	aMorph 
		on: self shortcut command
		do: [ self actOn: aPresentation ].
	aMorph 
		on: self shortcut ctrl
		do: [ self actOn: aPresentation ]