viewing access
selectedMessageName
	| c |
	^ (c := self currentChange) ifNotNil: [c methodSelector]