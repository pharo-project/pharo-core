as yet unclassified
to: aPackage oldName: aSymbol newName: anotherSymbol

	^ (super to: aPackage) 
		oldName: aSymbol;
		newName: anotherSymbol;
		yourself