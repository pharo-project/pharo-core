styleOpenParenthese: aMessageNode
	aMessageNode parentheses
		ifNotEmpty: [ 
			aMessageNode parentheses
				do: [ :interval | 
					| pos |
					pos := interval first.
					self addStyle: (#leftParenthesis asString , parentheseLevel asString) asSymbol from: pos to: pos.
					parentheseLevel := parentheseLevel + 1 ] ]