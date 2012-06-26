morphic ui
buildWindow
	| window |
	window := SystemWindow labelled: self label.
	window model: self.
	self widgetSpecs do: [:spec |
		| send fractions offsets |
		send := spec first.
		fractions := spec at: 2 ifAbsent: [#(0 0 1 1)].
		offsets := spec at: 3 ifAbsent: [#(0 0 0 0)].
		window
			addMorph: (self perform: send first withArguments: send allButFirst)
			fullFrame:
				(LayoutFrame
					fractions: 
						((fractions first)@(fractions second) corner: 
							(fractions third)@(fractions fourth))
					offsets:
						((offsets first)@(offsets second)  corner:
							(offsets third)@(offsets fourth)))].
	^ window