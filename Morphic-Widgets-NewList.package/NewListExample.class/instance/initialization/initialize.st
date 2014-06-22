initialize

	super initialize.

	pluggable := false.
	index := 0.
	toggleTitle := true.
	rawList := (1 to: 10) asOrderedCollection.
	textMorph := self buildTextMorph