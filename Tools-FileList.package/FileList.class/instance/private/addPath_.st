addPath: aString
	"Add the given string to the list of recently visited directories."

	| full |
	aString ifNil: [^self].
	full := String streamContents: [ :strm | 
		2 to: volumeList size do: [ :i | 
			strm nextPutAll: (volumeList at: i) trimBoth.
			strm nextPut: FileSystem disk separator]].
	full := full, aString.
"Remove and super-directories of aString from the collection."
	RecentDirs removeAllSuchThat: [ :aDir | ((aDir, '*') match: full)].

"If a sub-directory is in the list, do nothing."
	(RecentDirs detect: [ :aDir | ((full, '*') match: aDir)] ifNone: [nil])
		ifNotNil: [^self].

	[RecentDirs size >= 10]
		whileTrue: [RecentDirs removeFirst].
	RecentDirs addLast: full