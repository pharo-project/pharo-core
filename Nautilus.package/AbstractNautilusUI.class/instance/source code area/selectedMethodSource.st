selectedMethodSource
	self selectedMethod ifNil: [ ^ '' ].
	^ self selectedMethod sourceCode