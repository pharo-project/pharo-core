setUp

	super setUp.
	Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result' put: false.
	preLoadExecuted := postLoadExecuted := false.
