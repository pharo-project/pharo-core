as yet unclassified
minimumWidth
	| t s |
	t := self textMorph text asString.
	s := 0.
	t linesDo: [:l | s := s max: (self textFont widthOfString: l)].
	^ (s + 100) min: Display width