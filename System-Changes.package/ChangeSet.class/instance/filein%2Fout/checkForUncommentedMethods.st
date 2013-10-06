checkForUncommentedMethods
	| aList |
	"Check to see if there are any methods in the receiver that have no comments, and open a browser on all found"

	(aList := self methodsWithoutComments) size > 0
		ifFalse:
			[^ self inform: 'All methods in "', self name, '" have comments']
		ifTrue:
			[self systemNavigation  browseMessageList: aList name: 'methods in "', self name, '" that lack comments']