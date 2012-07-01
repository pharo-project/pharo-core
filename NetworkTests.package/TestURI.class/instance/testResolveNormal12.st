running resolving
testResolveNormal12
	| baseURI relURI resolvedURI |
	baseURI := 'http://a/b/c/d;p?q' asURI.
	relURI := 'g;x'.
	resolvedURI := baseURI resolveRelativeURI: relURI.
	self should: [resolvedURI asString = 'http://a/b/c/g;x'].
