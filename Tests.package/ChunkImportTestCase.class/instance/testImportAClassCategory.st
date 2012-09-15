importing-code
testImportAClassCategory
	| class classOrganizationString chunk |
	classOrganizationString := '(''testing'' testImportAClass testImportAMethod)
(''auxiliar'' importAClass)'.
	chunk := '!{1} reorganize!'.
	SystemAnnouncer uniqueInstance suspendAllWhile: [ [
		class := self importAClass.
		
		"we write the methods we will categorize"
		class compileSilently: 'testImportAClass'.
		class compileSilently: 'testImportAMethod'.
		class compileSilently: 'importAClass'.
		
		CodeImporter evaluateString: (chunk format: { class name asString }), classOrganizationString.
		self assert: classOrganizationString trimBoth equals: class organization stringForFileOut trimBoth.
	] ensure: [ class ifNotNil: [ class removeFromSystem ] ] ]