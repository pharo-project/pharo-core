setUp
	| repo |
	super setUp.
	MetacelloConfigurationResource projectAttributes: nil.
	repo := self monticelloRepository.
	self tempRepositories add: repo.
	gofer repository: repo.
	Smalltalk at: #'Metacello_Gofer_Test_Repository' put: repo.
	repo := self alternateRepository.
	self tempRepositories add: repo.
	Smalltalk at: #'Metacello_Configuration_Test_Alternate_Repository' put: repo.
	repo := self configurationRepository.
	self tempRepositories add: repo.
	Smalltalk at: #'Metacello_Configuration_Test_Repository' put: repo.
