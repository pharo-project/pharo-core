update30681
	"self new update30681"
	
	Author 
		useAuthor:  'EstebanLorenzano'
		during: [ 
			RPackageOrganizer 
				compile: 'packageNamedIgnoreCase: aSymbol ifAbsent: aBlock
	"In case of extensions, I can need to take a package ignoring name"
	self packagesDo: [  :each | 
		(each name sameAs: aSymbol) 
			ifTrue: [  ^ each  ]  ].
		
	^ aBlock value.' 
	classified: 'private' ].
	
	self withUpdateLog: '12604 regression on metacello long tests
	https://pharo.fogbugz.com/f/cases/12604
'.
	self loadTogether: self script334 merge: false.
	self flushCaches.
