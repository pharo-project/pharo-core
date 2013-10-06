configMethodBodyOn: aStream indent: indent
	| hasVersionString hasOperator hasProjectPackage hasLoads hasClassName hasPreLoadDoIt hasPostLoadDoIt |
	hasClassName := self className ~~ nil.
	hasVersionString := self versionString ~~ nil.
	hasOperator := operator ~~ nil.
	hasProjectPackage := self projectPackage ~~ nil
		and: [ self projectPackage packageRepository ~~ nil or: [ self projectPackage name ~= self className ] ].
	hasLoads := self loads ~~ nil.
	hasPreLoadDoIt := self getPreLoadDoIt ~~ nil.
	hasPostLoadDoIt := self getPostLoadDoIt ~~ nil.
	hasClassName
		ifTrue: [ 
			hasVersionString | hasOperator | hasProjectPackage | hasLoads
				ifTrue: [ 
					aStream
						cr;
						tab: indent + 1 ]
				ifFalse: [ aStream space ].
			aStream nextPutAll: 'className: ' , self className printString.
			hasVersionString | hasPreLoadDoIt | hasPostLoadDoIt | hasOperator | hasProjectPackage | hasLoads
				ifTrue: [ aStream nextPut: $; ] ].
	hasVersionString
		ifTrue: [ 
			| vs |
			hasClassName | hasOperator | hasProjectPackage | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
				ifTrue: [ 
					aStream
						cr;
						tab: indent + 1 ]
				ifFalse: [ aStream space ].
			vs := self versionString.
			aStream nextPutAll: 'versionString: '.
			vs isSymbol
				ifTrue: [ aStream nextPut: $# ].
			aStream nextPutAll: vs asString printString.
			hasPreLoadDoIt | hasPostLoadDoIt | hasOperator | hasProjectPackage | hasLoads
				ifTrue: [ aStream nextPut: $; ] ].
	hasPreLoadDoIt
		ifTrue: [ 
			hasClassName | hasOperator | hasProjectPackage | hasLoads | hasPreLoadDoIt
				ifTrue: [ 
					aStream
						cr;
						tab: indent + 1 ]
				ifFalse: [ aStream space ].
			aStream nextPutAll: 'preLoadDoIt: '.
			self preLoadDoIt value isSymbol
				ifTrue: [ 
					aStream 
						nextPut: $#;
						nextPutAll: self preLoadDoIt value asString printString]
				ifFalse: [ aStream nextPutAll: self preLoadDoIt value asString ].
			hasPostLoadDoIt | hasOperator | hasProjectPackage | hasLoads
				ifTrue: [ aStream nextPut: $; ] ].
	hasPostLoadDoIt
		ifTrue: [ 
			hasClassName | hasOperator | hasProjectPackage | hasLoads | hasPostLoadDoIt
				ifTrue: [ 
					aStream
						cr;
						tab: indent + 1 ]
				ifFalse: [ aStream space ].
			aStream nextPutAll: 'postLoadDoIt: '.
			self postLoadDoIt value isSymbol
				ifTrue: [ 
					aStream 
						nextPut: $#;
						nextPutAll: self postLoadDoIt value asString printString]
				ifFalse: [ aStream nextPutAll: self postLoadDoIt value asString ].
			hasOperator | hasProjectPackage | hasLoads
				ifTrue: [ aStream nextPut: $; ] ].
	hasOperator
		ifTrue: [ 
			hasClassName | hasVersionString | hasProjectPackage | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
				ifTrue: [ 
					aStream
						cr;
						tab: indent + 1 ]
				ifFalse: [ aStream space ].
			aStream nextPutAll: 'operator: #' , self operator asString printString.
			hasProjectPackage | hasLoads
				ifTrue: [ aStream nextPut: $; ] ].
	hasLoads
		ifTrue: [ 
			hasClassName | hasVersionString | hasOperator | hasProjectPackage | hasPreLoadDoIt | hasPostLoadDoIt
				ifTrue: [ 
					aStream
						cr;
						tab: indent + 1 ]
				ifFalse: [ aStream space ].
			aStream nextPutAll: 'loads: #('.
			self loads do: [ :str | aStream nextPutAll: str printString , ' ' ].
			aStream nextPut: $).
			hasProjectPackage
				ifTrue: [ aStream nextPut: $; ] ].
	hasProjectPackage
		ifTrue: [ 
			| hasName hasRepo |
			hasName := self projectPackage name ~= self className.
			hasRepo := self projectPackage packageRepository ~~ nil.
			hasName
				ifTrue: [ 
					hasClassName | hasVersionString | hasOperator | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
						ifTrue: [ 
							aStream
								cr;
								tab: indent + 1 ]
						ifFalse: [ aStream space ].
					aStream nextPutAll: 'file: ' , self projectPackage name printString.
					hasRepo
						ifTrue: [ aStream nextPut: $; ] ].
			hasRepo
				ifTrue: [ 
					| repos |
					repos := self projectPackage repositories.
					repos map values size = 1
						ifTrue: [ 
							hasClassName | hasVersionString | hasOperator | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
								ifTrue: [ 
									aStream
										cr;
										tab: indent + 1 ]
								ifFalse: [ aStream space ].
							self projectPackage packageRepository configMethodCascadeOn: aStream lastCascade: true ]
						ifFalse: [ 
							aStream cr.
							self projectPackage repositories configMethodCascadeOn: aStream indent: indent ] ] ]