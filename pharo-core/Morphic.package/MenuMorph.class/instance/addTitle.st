menu
addTitle

	| string |
	string := UIManager default request: 'Title for this menu?' translated.
	string isEmptyOrNil ifTrue: [^ self].
	self addTitle: string.
