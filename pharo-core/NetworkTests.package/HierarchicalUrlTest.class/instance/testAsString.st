testing
testAsString
	| url |
	url := HierarchicalUrl new
		schemeName: 'ftp'
		authority: 'localhost'
		path: #('path' 'to' 'file')
		query: 'aQuery'.
	self assert: url asString = 'ftp://localhost/path/to/file?aQuery'.