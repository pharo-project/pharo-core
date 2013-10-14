setUp
	| repo |
	super setUp.
	MetacelloConfigurationResource projectAttributes: nil.
	repo := self monticelloRepository.
	gofer := Gofer new.
	gofer disablePackageCache.
	gofer repository: repo.
	Smalltalk at: #'Metacello_Gofer_Test_Repository' put: repo.
	repo := self configurationRepository.
	gofer repository: repo.
	Smalltalk at: #'Metacello_Configuration_Test_Repository' put: repo.
	gofer package: 'MetacelloTestConfigurationOfProjectToolBox'.
	gofer metacelloLoad.
	Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result' put: false.
	Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result' put: false.
