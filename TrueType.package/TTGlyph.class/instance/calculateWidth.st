private
calculateWidth

	| min max |
	min := SmallInteger maxVal.
	max := SmallInteger minVal.
	self contours do: [:a | a do: [:p |
		p x > max ifTrue: [max := p x].
		p x < min ifTrue: [min := p x].
	]].
	^ max - min.
