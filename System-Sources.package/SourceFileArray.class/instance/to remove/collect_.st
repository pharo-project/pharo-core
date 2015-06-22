collect: aBlock

	| newCollection |
	newCollection := self species new: self size.
	1 to: self size do: [ :index | newCollection at: index put: (aBlock value: (self at: index)) ].
	^ newCollection