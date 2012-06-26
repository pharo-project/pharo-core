system start up
openChanges: changesName forImage: imageName
"find the changes file by looking in
a) the directory derived from the image name
b) the DefaultDirectory (which will normally be the directory derived from the image name or the SecurityManager's choice)
If an old file is not found in either place, check for a read-only file in the same places. If that fails, return nil"
	| changes fd |
	
	"look for the changes file or an alias to it in the image directory"
	fd := FileDirectory on: (FileDirectory dirPathFor: imageName).
	(fd fileExists: changesName)
		ifTrue: [changes := fd oldFileNamed: changesName].
	changes ifNotNil:[^changes].

	"look for the changes in the default directory"
	fd := DefaultDirectory.
	(fd fileExists: changesName)
		ifTrue: [changes := fd oldFileNamed: changesName].
	changes ifNotNil:[^changes].

	"look for read-only changes in the image directory"
	fd := FileDirectory on: (FileDirectory dirPathFor: imageName).
	(fd fileExists: changesName)
		ifTrue: [changes := fd readOnlyFileNamed: changesName].
	changes ifNotNil:[^changes].

	"look for read-only changes in the default directory"
	fd := DefaultDirectory.
	(fd fileExists: changesName)
		ifTrue: [changes := fd readOnlyFileNamed: changesName].
	"this may be nil if the last try above failed to open a file"
	^changes
