accessing
gofer
	^ Gofer new 
		url: self repositoryURL;
		yourself