testRelativeHTTP
	
	baseUrl := 'http://some.where/some/dir?query1#fragment1' asUrl.
	url := '../another/dir/?query2#fragment2' asUrl inContextOf: baseUrl.

	self assert: url asString equals: 'http://some.where/another/dir/?query2#fragment2'.