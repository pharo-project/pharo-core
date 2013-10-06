build
	"self new build openInWorld"
	|window list|
	window := (SystemWindow labelled: self label) model: self.
	window addMorph: self buildList frame: (0 @ 0 corner: 1 @ 1).
	^ window
	