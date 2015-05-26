drawSegmentsAtLineIndex: anIndex on: aCanvas
	(self paragraphProvider segmentsAtLine: anIndex)
		do: [ :s | 
			| pos |
			pos := (self left + self horizontalGapBefore) @ s position y
				translateBy: 0 negated @ (self offset y negated + self bounds top).
			s displayIconAt: pos on: aCanvas ]