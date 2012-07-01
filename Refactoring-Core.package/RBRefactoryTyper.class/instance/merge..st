equivalence classes
merge: aName 
	"rr 3/15/2004 14:05 add: the ifAbsent: keyword in the last line, as I encountered a failing case"
	| set1 set2 |
	set1 := backpointers at: methodName ifAbsent: [nil].
	set2 := backpointers at: aName ifAbsent: [nil].
	(set1 isNil or: [set2 isNil or: [set1 == set2]]) ifTrue: [^self].
	set1 addAll: set2.
	set2 do: [:each | backpointers at: each put: set1]