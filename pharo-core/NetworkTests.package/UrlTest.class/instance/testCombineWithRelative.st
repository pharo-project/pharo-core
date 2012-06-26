tests
testCombineWithRelative
	#(#('http://www.rfc1149.net/' 'foo.html' 'http://www.rfc1149.net/foo.html') #('http://www.rfc1149.net/index.html' 'foo.html' 'http://www.rfc1149.net/foo.html') #('http://www.rfc1149.net/devel/' '../sam/' 'http://www.rfc1149.net/sam/') #('http://www.rfc1149.net/devel/index.html' '../sam/' 'http://www.rfc1149.net/sam/')) 
		do: [:a | self assert: (Url combine: a first withRelative: a second) = a third]