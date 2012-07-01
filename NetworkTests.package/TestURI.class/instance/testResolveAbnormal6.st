running resolving
testResolveAbnormal6
	| baseURI relURI resolvedURI |
	baseURI := 'http://a/b/c/d;p?q' asURI.
	relURI := '.g'.
	resolvedURI := baseURI resolveRelativeURI: relURI.
	self should: [resolvedURI asString = 'http://a/b/c/.g'].
