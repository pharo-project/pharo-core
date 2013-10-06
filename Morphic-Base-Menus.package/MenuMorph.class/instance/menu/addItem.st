addItem

	| string sel |
	string := UIManager default request: 'Label for new item?' translated.
	string isEmpty ifTrue: [^ self].
	sel := UIManager default request: 'Selector?' translated.
	sel isEmpty ifFalse: [sel := sel asSymbol].
	self add: string action: sel.
