collectCoverageFor: methods
	| wrappers suite |
	wrappers := methods collect: [ :each | TestCoverage on: each ].
	suite := self
		resetResult;
		suiteForAllSelected.
	
	[ wrappers do: [ :each | each install ].
	[ self runSuite: suite ] ensure: [ wrappers do: [ :each | each uninstall ] ] ] valueUnpreemptively.
	wrappers := wrappers reject: [ :each | each hasRun ].
	wrappers isEmpty 
		ifTrue: 
			[ UIManager default inform: 'Congratulations. Your tests cover all code under analysis.' ]
		ifFalse: 
			[ 
			| ml |
			ml := MessageList new.
			(wrappers collect: [ :each | ml addMethodReference: each reference ]).
			(Smalltalk tools messageList 
				on: ml methodReferenceList
				named: 'Not Covered Code (' , (100 - (100 * wrappers size // methods size)) printString , '% Code Coverage)') open ].
	self saveResultInHistory