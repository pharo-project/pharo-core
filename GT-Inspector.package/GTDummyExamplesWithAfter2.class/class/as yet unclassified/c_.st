c: argC
	<gtExample>
	<depends: #d>
	<after: #afterC:c:c: arguments: #( varA varB varC )>
	| varA varB varC |
	
	self assert: argC = 1.
	
	varA := GTExample new.
	varB := Smalltalk.
	varC := 'abcd'.	
			
	^ 2