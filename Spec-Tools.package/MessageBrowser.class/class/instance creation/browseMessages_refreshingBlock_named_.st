browseMessages: aCollection refreshingBlock: aBlock named: anObject

	^ self new
		refreshingBlock: aBlock;
		messages: aCollection;
		yourself