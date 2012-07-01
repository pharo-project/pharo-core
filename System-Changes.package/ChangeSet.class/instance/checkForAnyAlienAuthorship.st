filein/out
checkForAnyAlienAuthorship
	"Check to see if there are any versions of any methods in the receiver that have author full name other than that of the current author, and open a browser on all found"

	| aList fullName |
	(fullName := Author fullNamePerSe) ifNil: [^ self inform: 'No author full name set in this image'].
	(aList := self methodsWithAnyInitialsOtherThan: fullName) size > 0
		ifFalse: [^ self inform: 'All versions of all methods in "', self name, '"
have authoring stamps which start with "', fullName, '"']
		ifTrue:
			[self systemNavigation  browseMessageList: aList name: 'methods in "', self name, '" with any authoring stamps not starting with "', fullName, '"']