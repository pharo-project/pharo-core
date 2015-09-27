testNegativeNumberError
	self should: [ RBParser parseExpression: '- 2' ] raise: SyntaxErrorNotification