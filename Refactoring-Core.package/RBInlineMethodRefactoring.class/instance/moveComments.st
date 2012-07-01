transforming
moveComments
	inlineParseTree nodesDo: 
			[:each | 
			each 
				comments: (each comments collect: 
							[:anInterval | 
							| start stop source |
							source := sourceParseTree source.
							start := source size + 1.
							source := source 
										, (inlineParseTree source copyFrom: anInterval first to: anInterval last).
							stop := source size.
							sourceParseTree source: source.
							start to: stop])]