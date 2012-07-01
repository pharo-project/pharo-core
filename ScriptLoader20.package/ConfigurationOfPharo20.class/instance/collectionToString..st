private accessing
collectionToString: aCollection 
	^String streamContents: [ :stream |
		stream << '#('.
		aCollection 
			do: [ :each | stream << $' << each asString << $' ]
			separatedBy: [ stream << String space ].
		stream << ')' ]