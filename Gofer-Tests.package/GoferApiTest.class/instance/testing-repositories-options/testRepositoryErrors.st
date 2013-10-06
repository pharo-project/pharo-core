testRepositoryErrors
	gofer
		url: 'http://pharo-project.org/page-that-will-never-ever-exist';
		repository: self monticelloRepository.
	gofer package: 'GoferFoo'.
	
	gofer enableRepositoryErrors.
	self should: [ gofer resolved ] raise: GoferRepositoryError.
	
	gofer disableRepositoryErrors.
	self shouldnt: [ gofer resolved ] raise: GoferRepositoryError