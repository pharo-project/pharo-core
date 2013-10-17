completionToken
	completionToken ifNil: 
		[ | range |
		range := ranges at: completionIndex.
		completionToken := self 
			sourceOf: range
			stopAt: position.
		completionToken := completionToken wordBefore: completionToken size ].
	^ completionToken