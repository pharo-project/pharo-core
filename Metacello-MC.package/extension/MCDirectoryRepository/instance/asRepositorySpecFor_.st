asRepositorySpecFor: aMetacelloMCProject

	^(aMetacelloMCProject repositorySpec)
		description:  directory fullName;
	 	type: 'directory';
		yourself