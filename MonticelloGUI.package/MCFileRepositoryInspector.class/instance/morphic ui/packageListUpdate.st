packageListUpdate

	| result loadedPackages |	
	
	"Within fork, make no changes to object state until end with assignment wrapped by #defer:"
	
	packageListUpdateProcess ifNotNil: [ packageListUpdateProcess terminate ].	
	packageListUpdateProcess := 
	[	versions ifNotNil: 
		[	result := Set new: versions size.
			versions do: [ :each | result add: each first ].

			"sort loaded packages first, then alphabetically"
			loadedPackages := Set new: loaded size.
			loaded do: [ :each |
				loadedPackages add: (each copyUpToLast: $-). ].
			result := result asArray sort: [ :a :b |
				| loadedA loadedB |
				loadedA := loadedPackages includes: a.
				loadedB := loadedPackages includes: b.
				loadedA = loadedB 
					ifTrue: [ a < b ]
					ifFalse: [ loadedA ] ].
	
			packagePattern ifNotEmpty: [
				result := result select: [ :package|  package name asLowercase includesSubstring: packagePattern ]].
			 
			UIManager default defer:
			[	packageList := result.
				self changed: #packageList
			]
		]
	] fork.