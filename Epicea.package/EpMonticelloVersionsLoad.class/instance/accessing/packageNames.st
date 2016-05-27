packageNames

	^ versionNames collect: [ :each | each copyUpToLast: $- ]