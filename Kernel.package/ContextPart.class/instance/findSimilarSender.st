query
findSimilarSender
	"Return the closest sender with the same method, return nil if none found"

	| meth |
	meth := self method.
	^ self sender findContextSuchThat: [:c | c method == meth]