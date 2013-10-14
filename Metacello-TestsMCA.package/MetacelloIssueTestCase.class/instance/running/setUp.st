setUp
	| repo |
	super setUp.
	repo := self monticelloRepository.
	gofer := Gofer new.
	gofer disablePackageCache.
	gofer repository: repo.
	Smalltalk at: #'Metacello_Gofer_Test_Repository' put: repo.
	repo := self configurationRepository.
	gofer repository: repo.
	Smalltalk at: #'Metacello_Configuration_Test_Repository' put: repo.
