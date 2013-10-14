setUp

	| repo |
	super setUp.
	repo := self configurationRepository.
	self tempRepositories add: repo.
	gofer repository: repo