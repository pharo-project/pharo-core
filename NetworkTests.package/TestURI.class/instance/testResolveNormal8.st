running resolving
testResolveNormal8
	| baseURI relURI resolvedURI |
	baseURI := 'http://a/b/c/d;p?q' asURI.
	relURI := 'g?y'.
	resolvedURI := baseURI resolveRelativeURI: relURI.
	self should: [resolvedURI asString = 'http://a/b/c/g?y'].
