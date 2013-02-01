private
updateCountOf: aRule

	aRule isNil ifTrue: [^ self].
	checker rule: aRule.
	aRule isComposite 
		ifTrue: [aRule rules do: [:rule |
			self updateCountOf:rule].
	numberOfFalsePositives 
		at: aRule
		put: (aRule rules inject: 0 into: [:count :each | 
			count + numberOfFalsePositives at: each]).
	numberOfToDos 
		at: aRule
		put: (aRule rules inject: 0 into: [:count :each | 
			count + numberOfToDos at: each]).
	numberOfProblems
		at: aRule
		put: (aRule rules inject: 0 into: [:count :each | 
			count + numberOfProblems at: each]).
		^ self].

	numberOfFalsePositives at: aRule put: ((checker falsePositiveOf: aRule) size).
	numberOfToDos at: aRule put: ((checker toDoOf: aRule) size).
	numberOfProblems at: aRule put: aRule critics size   