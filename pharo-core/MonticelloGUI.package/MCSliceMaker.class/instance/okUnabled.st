user interface
okUnabled
	^ self info usableIssueNumber isEmptyOrNil not
		and: [self info usableIssueSummary isEmptyOrNil not
		and: [self info includedPackages isEmptyOrNil not]]