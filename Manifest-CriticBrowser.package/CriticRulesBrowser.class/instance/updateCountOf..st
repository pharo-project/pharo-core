private
updateCountOf: aRule

	aRule isNil ifTrue: [^ self].
	checker rule: aRule.
	aRule isComposite 
		ifTrue: [aRule rules do: [:rule |
			self updateCountOf:rule].
	countOfFalsePositive 
		at: aRule
		put: (aRule rules inject: 0 into: [:count :each | 
			count + countOfFalsePositive at: each]).
	countOfToDo 
		at: aRule
		put: (aRule rules inject: 0 into: [:count :each | 
			count + countOfToDo at: each]).
	countOfProblem
		at: aRule
		put: (aRule rules inject: 0 into: [:count :each | 
			count + countOfProblem at: each]).
		^ self].

	countOfFalsePositive at: aRule put: ((checker falsePositiveOf: aRule) size).
	countOfToDo at: aRule put: ((checker toDoOf: aRule) size).
	countOfProblem at: aRule put: aRule critics size   