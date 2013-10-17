addClassTag: aSymbol
	"Add the class tag from the receiver, if already added do nothing."
	
	^ self 
		classTagNamed: aSymbol 
		ifAbsent: [ classTags add: (RPackageTag package: self name: aSymbol) ]
