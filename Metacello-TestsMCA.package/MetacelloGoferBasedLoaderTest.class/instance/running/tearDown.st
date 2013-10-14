tearDown
	super tearDown.
	Smalltalk removeKey: #'Metacello_Configuration_Test_DoIt_Result' ifAbsent: [].
	MetacelloConfigurationResource projectAttributes: nil.