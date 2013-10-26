testAbsoluteFILE2
	
	url := 'fILE:/foo/bar/zookie/?fakequery/#fragger' asUrl.

	self assert: url scheme = 'file'.
	self assert: url pathSegments first ='foo'.
	self assert: url fragment = 'fragger'.