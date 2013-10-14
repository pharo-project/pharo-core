setUp
	| repo |
	super setUp.
	repo := MetacelloAtomicConfigurationResource current monticelloRepository.
	self tempRepositories add: repo.
	Smalltalk at: #'Metacello_Atomic_Configuration_Test_Repository' put: repo.