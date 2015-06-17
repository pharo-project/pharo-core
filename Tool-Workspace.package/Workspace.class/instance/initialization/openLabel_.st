openLabel: labelString

	window := (SystemWindow labelled: labelString).
	window model: self.
	window addMorph: self buildTextMorph frame: (0@0 corner: 1@1).
	window openInWorld.
	^ window