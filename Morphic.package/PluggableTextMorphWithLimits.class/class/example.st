example
example
	" self example "

	| window textMorph |
	textMorph := self 
					on: self
					text: #getText
					accept: nil.
	window := StandardWindow new.
	window addMorph: textMorph frame: (0@0 corner: 1@1).
	window openInWorld.
	window title: 'PluggableTextMorphWithLimits example'