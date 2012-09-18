testing-normalization
testIdentifier
	self assert: nil operator: #normalizeLiteral: gives: 'nil'.
	self assert: true operator: #normalizeLiteral: gives: 'true'.
	self assert: false operator: #normalizeLiteral: gives: 'false'.
	self assert: 123 operator: #normalizeLiteral: gives: '123'.
	self assert: 123.456 operator: #normalizeLiteral: gives: '123.456'.
	self assert: $a operator: #normalizeLiteral: gives: 'a'.
	self assert: 'abcCde' operator: #normalizeLiteral: gives: 'abcCde'.
	self assert: #(a b c) operator: #normalizeLiteral: gives: 'a b c'.
	self assert: #[1 2 3] operator: #normalizeLiteral: gives: '1 2 3'