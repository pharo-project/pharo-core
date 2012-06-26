construction
labels: labelList lines: linesArray selections: selectionsArray 
	"This method allows the receiver to accept old-style SelectionMenu creation messages. It should be used only for backward compatibility during the MVC-to-Morphic transition. New code should be written using the other menu construction protocol such as addList:."

	"Labels can be either a sting with embedded crs, or a collection of strings."

	| labelArray |
	labelArray := (labelList isString) 
				ifTrue: [labelList lines]
				ifFalse: [labelList]. 
	1 to: labelArray size
		do: 
			[:i | 
			self add: (labelArray at: i) action: (selectionsArray at: i).
			(linesArray includes: i) ifTrue: [self addLine]]