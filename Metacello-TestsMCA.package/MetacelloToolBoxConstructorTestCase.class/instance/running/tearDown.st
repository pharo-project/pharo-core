tearDown
	| aGofer |
	super tearDown.
	Smalltalk removeKey: #'Metacello_Atomic_Configuration_Test_Repository' ifAbsent: [].
	MetacelloConfigurationResource projectAttributes: nil