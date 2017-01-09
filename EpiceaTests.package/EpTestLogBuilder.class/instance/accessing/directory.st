directory

	^ directory ifNil: [ FileSystem workingDirectory / 'epicea-tests' ]