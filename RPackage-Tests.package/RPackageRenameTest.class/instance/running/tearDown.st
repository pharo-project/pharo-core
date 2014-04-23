tearDown 
	super tearDown.
	#TestClass asClassIfPresent: [ :class | class removeFromSystem ].