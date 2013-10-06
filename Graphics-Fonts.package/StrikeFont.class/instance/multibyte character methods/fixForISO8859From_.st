fixForISO8859From: aStrikeFont 
	| fixer m mappingTable |
	fixer := StrikeFontFixer newOn: aStrikeFont.
	self reset.
	xTable := aStrikeFont xTable copy.
	glyphs := Form extent: aStrikeFont glyphs extent.
	maxAscii := 255.
	minAscii := 0.
	mappingTable := fixer mappingTable.
	"stopConditions := nil."
	0 
		to: 255
		do: 
			[ :i | 
			(m := mappingTable at: i + 1) ~= nil 
				ifTrue: 
					[ self 
						characterFormAt: (Character value: i)
						put: (aStrikeFont characterFormAt: (Character value: m)) ]
				ifFalse: 
					[ self 
						characterFormAt: (Character value: i)
						put: (aStrikeFont characterFormAt: Character space) ] ].
	^ self