styleCloseParenthese: aMessageNode
	aMessageNode parentheses
		ifNotEmpty: [ 
			aMessageNode parentheses
				reverseDo: [ :interval | 
					| pos |
					pos := interval last.
					parentheseLevel := parentheseLevel - 1.
					self addStyle: (#rightParenthesis asString , parentheseLevel asString) asSymbol from: pos to: pos ] ]