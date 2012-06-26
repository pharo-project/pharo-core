messageList interface
on: aMessageList named: aString

	^ self new
		messages: aMessageList methodReferenceList;
		title: aString;
		yourself