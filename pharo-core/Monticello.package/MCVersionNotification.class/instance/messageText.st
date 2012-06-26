as yet unclassified
messageText
	^ String streamContents:
		[:s |
		s nextPutAll: 'Committed to repository: ', repository description; cr; cr.
		s nextPutAll: version summary.
		changes isEmpty ifFalse:
			[s cr; cr.
			s nextPutAll: '-----------------------------------------------------'; cr.
			s nextPutAll: 'Changes since ', ancestor info name, ':'; cr.
			changes do:
			[:ea |
			s cr; nextPutAll: ea summary; cr.
			s nextPutAll: ea sourceString]]]