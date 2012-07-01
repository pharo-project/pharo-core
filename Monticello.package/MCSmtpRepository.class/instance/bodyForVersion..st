as yet unclassified
bodyForVersion: aVersion
	^ String streamContents:
		[ :s |
		s nextPutAll: 'from version info:'; cr; cr.
		s nextPutAll:  aVersion info summary]