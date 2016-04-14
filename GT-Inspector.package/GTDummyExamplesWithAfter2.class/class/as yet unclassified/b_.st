b: argB
	<gtExample>
	<depends: #c:>
	<after: #afterB:b:b: arguments: #( varA varB argB )>
	| varA varB |
	
	self assert: argB = 2.
	
	varA := GTExample new.
	varB := Smalltalk.
	
	^ 3