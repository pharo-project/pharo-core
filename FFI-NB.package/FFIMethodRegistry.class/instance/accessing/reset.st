reset
	"Recompile methods is the easiest way (so far) to force a FFI recompilation, needed in 
	 particular when we change platforms"
	self compiledMethods do: [ :each |
		each methodClass
			compileSilently: each sourceCode 
			classified: each category ].
	self compiledMethods removeAll