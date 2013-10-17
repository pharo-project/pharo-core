selectedDirectoryName

	^ self selectedFileDirectory ifNotNil: [ :dir | dir basename ]