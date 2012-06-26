debug and other
addMouseUpAction
	| codeToRun oldCode |
	oldCode := self
				valueOfProperty: #mouseUpCodeToRun
				ifAbsent: [''].
	codeToRun := UIManager default request: 'MouseUp expression:' translated initialAnswer: oldCode.
	self addMouseUpActionWith: codeToRun