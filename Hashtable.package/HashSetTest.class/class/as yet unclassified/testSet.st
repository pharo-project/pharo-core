testSet
	"self testSet"
	| set1 set2 |
	set1 := Set new
		add: 1;
		yourself.
	set2 := set1 copy.
	set2 add: 2.
	^set1 includes: 2