private
precedenceOf: parentSelector greaterThan: childSelector 
	"Put parenthesis around things that are preceived to have 'lower' precedence. For example, 'a + b * c' 
	-> '(a + b) * c' but 'a * b + c' -> 'a * b + c'"

	| childIndex parentIndex operators |
	operators := #(#($| $& $?) #($= $~ $< $>) #($- $+) #($* $/ $% $\) #($@)).
	childIndex := 0.
	parentIndex := 0.
	1 to: operators size
		do: 
			[:i | 
			((operators at: i) includes: parentSelector first) 
				ifTrue: [parentIndex := i].
			((operators at: i) includes: childSelector first) 
				ifTrue: [childIndex := i]].
	^childIndex < parentIndex