paths
pathForDirectory
	"Path using local file system's pathname delimiter.
	DOS paths with drive letters should not
	be prepended with a delimiter even though
	they are absolute. Filename is left out."

	| delimiter |
	delimiter :=  FileSystem disk separator.
	^String streamContents: [ :s |
		(self isAbsolute and: [self firstPartIsDriveLetter not])
			ifTrue: [ s nextPut: delimiter ].
		1 to: self path size - 1 do: [ :ii |
			s nextPutAll: (path at: ii); nextPut: delimiter]]