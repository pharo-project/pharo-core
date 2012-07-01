filein/fileout
fileIntoNewChangeSet
	| p ff |
	(p := self selectedPackage) ifNil: [^ Beeper beep].
	ff := FileStream readOnlyFileNamed: p fullPackageName.
	ChangeSet newChangesFromStream: ff named: p packageName