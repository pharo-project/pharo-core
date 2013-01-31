testing-normalization
testSelector
	self assert: '' operator: #normalizeSelector: gives: ''.
	self assert: '+' operator: #normalizeSelector: gives: '+'.
	self assert: '==' operator: #normalizeSelector: gives: '=='.
	self assert: 'negated' operator: #normalizeSelector: gives: 'negated'.
	self assert: 'negatedValue' operator: #normalizeSelector: gives: 'negated Value'.
	self assert: 'raisedTo:' operator: #normalizeSelector: gives: 'raised To '.
	self assert: 'raised:to:' operator: #normalizeSelector: gives: 'raised to '