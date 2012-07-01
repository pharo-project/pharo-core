as yet unclassified
fullReport
	^ String streamContents: [:strm |
		rootMessageTally 
			ifNotNil: [rootMessageTally report: strm]]