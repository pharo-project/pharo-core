askForDoits
	| choice choices |
	choices := {'do not process' translated. 'at the beginning' translated. 'at the end' translated}.
	choice := nil.
	[choices includes: choice] whileFalse: [
		choice := UIManager default 
				chooseFrom: choices 
				values: choices 
				title: 'Unprocessed doIts found. When to process those?' translated.
		choice ifNil: [^0]].
	^choices indexOf: choice