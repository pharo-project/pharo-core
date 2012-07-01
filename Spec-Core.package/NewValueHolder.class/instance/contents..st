accessing
contents: anObject
	
	| oldValue |
	oldValue := contents.
	contents := anObject.
	self contentsChanged: oldValue.