accessing
secondarySelectionToken: aTextOrStringOrRegex
	secondarySelectionToken := (aTextOrStringOrRegex isText ifTrue: [aTextOrStringOrRegex asString] ifFalse: [aTextOrStringOrRegex])