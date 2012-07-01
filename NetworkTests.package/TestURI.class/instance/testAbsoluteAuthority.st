tests authority
testAbsoluteAuthority
	"self debug: #testAbsoluteAuthority"
	
	| uri absoluteURIString |
	"An absolute URI with authority. An absolute URI starts with a scheme:"
	absoluteURIString := 'http://www.pharo-project.org'. 
	uri := URI fromString: absoluteURIString.
	self assert: (uri asString = absoluteURIString).
	self assert: (uri isAbsolute).
	self assert: (uri authority asString = 'www.pharo-project.org').
	self deny: (uri isOpaque).