example
example

	| tc testMorph model anotherMorph associations |
	
	model := ClassMethodBrowser new.
	
	testMorph := model buildWithSpec: #defaultSpec.
	anotherMorph := model buildWithSpec: #defaultSpec2.
	
	associations := {'Test' -> testMorph. 'Another'-> anotherMorph}.
	tc := self associations: associations.
	
	model classes: (Smalltalk allClasses).
	tc open.