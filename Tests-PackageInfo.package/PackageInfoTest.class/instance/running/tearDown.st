tearDown
	super tearDown.
	createdClasses ifNotNil: [createdClasses do: [:cls | cls removeFromSystem ]]