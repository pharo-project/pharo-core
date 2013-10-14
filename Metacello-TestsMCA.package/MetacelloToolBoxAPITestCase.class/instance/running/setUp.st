setUp
	| repo gofer |
	super setUp.
	repo := MCDictionaryRepository new.
	repo description: 'dictionary://', self repositoryName asString.
	self tempRepositories add: repo.
	Smalltalk at: self repositoryName put: repo.
	repo := MCDictionaryRepository new.
	repo description: 'dictionary://', self alternatRepositoryName asString.
	self tempRepositories add: repo.
	Smalltalk at: self alternatRepositoryName put: repo.
	Smalltalk at: self configurationName ifPresent: [:cl | cl removeFromSystem ].

	repo := MetacelloConfigurationResource current monticelloRepository.
	self tempRepositories add: repo.
	Smalltalk at: #'Metacello_Configuration_Test_Repository' put: repo.
	gofer := Gofer new
		repository: repo;
		package: 'MetacelloTestConfigurationOfProjectFee'; 
		metacelloLoad.
	repo := MetacelloMonticelloResource current monticelloRepository.
	repo description: 'dictionary://Metacello_Gofer_Test_Repository'.
	self tempRepositories add: repo.
	Smalltalk at: #'Metacello_Gofer_Test_Repository' put: repo.

	(Smalltalk at: #MetacelloTestConfigurationOfProjectFee) new project load: '4.0'.
