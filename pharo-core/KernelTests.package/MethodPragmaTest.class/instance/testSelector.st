testing-method
testSelector
	| pragma |
	pragma := self pragma: 'foo' selector: #bar.
	self assert: pragma selector == #bar.