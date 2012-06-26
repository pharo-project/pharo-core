testing
testErrorClassCreation
	| tmpCategory trait cls2 |
	tmpCategory := 'TemporaryGeneratedClasses'.
	Smalltalk globals at: #AClass ifPresent: [ :v | v removeFromSystem ].
	Smalltalk globals at: #AClass2 ifPresent: [ :v | v removeFromSystem ].
	Smalltalk globals at: #TMyTrait ifPresent: [ :v | v removeFromSystem ].
	trait := Trait named: #TMyTrait uses: {} category: tmpCategory.	"----------------"	"	Object subclass: #AClass
			instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: tmpCategory.
"	"----------------"
	nil
		subclass: #AClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: tmpCategory.	"----------------"
	cls2 := (Smalltalk globals at: #AClass)
		subclass: #AClass2
		uses: trait
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: tmpCategory.	"----------------"
	Object
		subclass: #AClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: tmpCategory.
	self assert: trait users asArray = {cls2}.
	self assert: cls2 traits asArray = {trait}.	"----------------"
	Smalltalk globals at: #AClass ifPresent: [ :v | v removeFromSystem ].
	Smalltalk globals at: #AClass2 ifPresent: [ :v | v removeFromSystem ].
	Smalltalk globals at: #TMyTrait ifPresent: [ :v | v removeFromSystem ]