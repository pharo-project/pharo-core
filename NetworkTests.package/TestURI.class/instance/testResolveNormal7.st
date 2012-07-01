running resolving
testResolveNormal7
	| baseURI relURI resolvedURI |
	baseURI := 'http://a/b/c/d;p?q' asURI.
	relURI := '?y'.
	resolvedURI := baseURI resolveRelativeURI: relURI.
	self should: [resolvedURI asString = 'http://a/b/c/?y'].
