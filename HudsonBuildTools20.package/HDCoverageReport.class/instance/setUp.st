running
setUp
	super setUp.
	wrappers := ((packages := self packagesIn: suite)
		gather: [ :package | self methodsIn: package ])
		collect: [ :each | HDTestCoverage on: each ].
	wrappers do: [ :each | each install ]