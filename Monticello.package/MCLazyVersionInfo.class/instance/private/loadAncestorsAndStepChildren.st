loadAncestorsAndStepChildren
	"This code scans all the repositories to find the exact package version and reload the relevant info."

	"Transient failures, such as the lack of network connectivity, will return nothing and no errors from this code."

	(MCRepositoryGroup default in: [ :r | r versionWithInfo: self ifNone: [  ] ])
		ifNotNil: [ :aVersion | 
			ancestors := WeakArray withAll: aVersion info ancestors.
			stepChildren := WeakArray withAll: aVersion info stepChildren ]