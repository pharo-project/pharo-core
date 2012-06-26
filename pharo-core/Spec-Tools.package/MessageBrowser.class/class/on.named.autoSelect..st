instance creation
on: aList named: aString autoSelect: aSelector

	^ self new
		messages: aList;
		title: aString;
		autoSelect: aSelector;
		yourself