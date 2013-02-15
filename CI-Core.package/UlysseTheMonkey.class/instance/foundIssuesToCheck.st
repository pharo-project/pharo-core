process
foundIssuesToCheck

	^ self tracker openIssues select: [:e | e hasToBeChecked ]