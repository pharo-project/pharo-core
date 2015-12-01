resultCached: aResult
	self ignoreCache ifFalse: [ result := aResult ].
	GTExampleNautilus methodChanged: self method.
	^ aResult