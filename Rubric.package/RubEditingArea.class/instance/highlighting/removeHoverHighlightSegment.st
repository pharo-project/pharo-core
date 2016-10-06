removeHoverHighlightSegment

	(self getHoverHighlightSegment)
		ifNotNil: [ :aSegment | aSegment delete ].