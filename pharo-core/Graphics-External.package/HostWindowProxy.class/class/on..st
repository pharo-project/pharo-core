initialize-release
on: aSourceForm
"Build a new window proxy by finding the appropriate platform specific subclass
and setting it up for this Form-like argument"
	^ActiveProxyClass new on: aSourceForm