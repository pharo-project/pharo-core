private-parsing
parseUnaryPattern
	| selector |
	selector := currentToken.
	self step.
	^self methodNodeClass selectorParts: (Array with: selector) arguments: #()