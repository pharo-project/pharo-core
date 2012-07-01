initialization
openLabel: labelString
	| window pane |
	window := (SystemWindow labelled: labelString) model: self.
	pane := self buildTextMorph.
	window addMorph: pane frame: (0@0 corner: 1@1).
	window openInWorld.
	^ window