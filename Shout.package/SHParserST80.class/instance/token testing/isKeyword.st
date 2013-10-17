isKeyword
	^ (currentTokenFirst isLetter
			or: [currentTokenFirst == $_])
		and: [currentToken last == $:]