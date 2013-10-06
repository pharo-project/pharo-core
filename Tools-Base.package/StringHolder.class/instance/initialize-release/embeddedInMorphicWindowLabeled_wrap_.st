embeddedInMorphicWindowLabeled: labelString wrap: aBoolean
	| window |
	window :=  (SystemWindow labelled: labelString) model: self.
	window 
		addMorph: (self buildTextMorph wrapFlag: aBoolean)
		frame: (0@0 corner: 1@1).
	^ window