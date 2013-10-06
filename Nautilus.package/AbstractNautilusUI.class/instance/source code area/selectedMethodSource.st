selectedMethodSource
	self selectedMethod ifNil: [ ^ '' ].
	self showSource ifTrue: [ ^ self selectedMethod sourceCode ].
	self showByteCode ifTrue: [ ^ self selectedMethod symbolic ].
	^ 'error'.		