versionInfo
	^ self ancestors 
		ifNotEmptyDo: [ :list | list first ] 
		ifEmpty: [ nil ]