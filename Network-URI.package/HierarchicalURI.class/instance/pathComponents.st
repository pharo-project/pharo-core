accessing
pathComponents
	^pathComponents ifNil: [pathComponents := (self path findTokens: $/) collect: [:each | each unescapePercents]]