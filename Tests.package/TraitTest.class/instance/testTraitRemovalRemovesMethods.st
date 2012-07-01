testing
testTraitRemovalRemovesMethods
	
	self flag: #fix.  "It has to be refactored when Mariano's ClassBuilder for testCase is integrated :)"
	
	SystemChangeNotifier uniqueInstance doSilently: [
		| AAA TAAA |
		[	"we create a trait"
			TAAA := Trait named: #TAAA
				uses: {}
				category: 'AAA'.
			TAAA compile: 'm1 ^1' classified: 'test'.

			"we create a class using that trait"
			AAA := Object subclass: #AAA
				uses: TAAA
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: 'AAA'.

			self assert: AAA localSelectors isEmpty.
			AAA removeFromComposition: TAAA. 
			self assert: AAA localSelectors isEmpty.
		] ensure: [	
			AAA removeFromSystem: false.
			TAAA removeFromSystem: false.
		]
	]