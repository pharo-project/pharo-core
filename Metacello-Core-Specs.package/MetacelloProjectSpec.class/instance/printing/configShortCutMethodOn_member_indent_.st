configShortCutMethodOn: aStream member: aMember indent: indent
	| hasVersionString hasOperator hasProjectPackage hasLoads hasClassName hasPreLoadDoIt hasPostLoadDoIt |
	hasClassName := self className ~~ nil.
	hasVersionString := self versionString ~~ nil.
	hasOperator := operator ~~ nil.
	hasProjectPackage := self projectPackage ~~ nil
		and: [ self projectPackage name ~~ nil or: [ self projectPackage packageRepository ~~ nil ] ].
	hasLoads := self loads ~~ nil.
	hasPreLoadDoIt := self getPreLoadDoIt ~~ nil.
	hasPostLoadDoIt := self getPostLoadDoIt ~~ nil.
	hasClassName | hasOperator | hasProjectPackage | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
		ifTrue: [ 
			(aMember methodUpdateSelector == #copy: or: [ aMember methodUpdateSelector == #with: ])
				ifTrue: [ 
					aStream
						nextPutAll: 'with: [';
						cr ]
				ifFalse: [ 
					aStream
						nextPutAll: 'overrides: [';
						cr ].
			aStream
				tab: indent;
				nextPutAll: 'spec'.
			self configMethodBodyOn: aStream indent: indent.
			aStream nextPutAll: ' ]'.
			^ self ].
	hasVersionString
		ifTrue: [ 
			| vs |
			vs := self versionString.
			aStream nextPutAll: 'with: '.
			vs isSymbol
				ifTrue: [ aStream nextPut: $# ].
			aStream nextPutAll: vs asString printString ]