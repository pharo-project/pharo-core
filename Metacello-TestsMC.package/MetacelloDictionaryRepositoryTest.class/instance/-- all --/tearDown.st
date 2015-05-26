tearDown
	| aGofer |
	super tearDown.
	aGofer := Gofer new.
	self tearDownPackages: aGofer.
	aGofer references notEmpty ifTrue: [ aGofer metacelloUnload ].
	Smalltalk removeKey: #'Metacello_Gofer_Test_Repository' ifAbsent: [].
	Smalltalk removeKey: #'Metacello_Configuration_Test_Repository' ifAbsent: [].
	Smalltalk removeKey: #'Metacello_Configuration_Test_Alternate_Repository' ifAbsent: [].
	self tempRepositories do: [:repo | MCRepositoryGroup default removeRepository: repo ].
