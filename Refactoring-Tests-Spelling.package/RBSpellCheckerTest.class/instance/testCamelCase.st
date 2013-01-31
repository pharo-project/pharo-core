testing-normalization
testCamelCase
	self assert: '' operator: #normalizeCamelCase: gives: ''.
	self assert: 'CamelCase' operator: #normalizeCamelCase: gives: 'Camel Case'.
	self assert: 'CamelCase123' operator: #normalizeCamelCase: gives: 'Camel Case 123'.
	self assert: 'Camel00case' operator: #normalizeCamelCase: gives: 'Camel 00 case'.
	self assert: '0camels' operator: #normalizeCamelCase: gives: '0 camels'.
	self assert: '2 camels' operator: #normalizeCamelCase: gives: '2 camels'.
	self assert: '3  Camels' operator: #normalizeCamelCase: gives: '3  Camels'.
	self assert: 'camelCase' operator: #normalizeCamelCase: gives: 'camel Case'.
	self assert: 'camel0Case' operator: #normalizeCamelCase: gives: 'camel 0 Case'.
	self assert: 'camel' operator: #normalizeCamelCase: gives: 'camel'.
	self assert: 'Camel' operator: #normalizeCamelCase: gives: 'Camel'