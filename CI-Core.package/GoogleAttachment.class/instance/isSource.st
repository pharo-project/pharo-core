testing
isSource
	^ (self filename endsWith: '.st') or: [ self filename endsWith: '.cs' ].