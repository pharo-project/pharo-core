checkForUnclassifiedMethods
	"Open a message list browser on all methods in the current change set that have not been categorized,"

	| aList |
	(aList := self methodsWithoutClassifications) size > 0
		ifFalse:
			[^ self inform: 'All methods in "', self name, '"
are categorized.']
		ifTrue:
			[self systemNavigation  browseMessageList: aList name: 'methods in "', self name, '" which have not been categorized']