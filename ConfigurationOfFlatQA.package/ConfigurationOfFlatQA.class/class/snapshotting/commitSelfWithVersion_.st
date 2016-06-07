commitSelfWithVersion: versionNumber

	| version |

	version := self package mcPackage workingCopy
		newVersionWithMessage: 'Added version ', versionNumber
		in: self mainRepo.
		
	self commitToPublicRepos: version