b3: argB
	<gtExample>
	<depends: #c:>
	<after: #afterB:b:b: arguments: #( varA varB varC )> " mistake "
	<raises: #AssertionFailure> " todo: THIS IS WRONG ! better: verify the static setup first "
	" START -> D -> afterD:d:d: -> C -> afterC:c:c: -> B -> afterB:b:b: -> END "
	
	| varA varB |
	
	self assert: argB = 2.
	
	varA := GTExample new.
	varB := Smalltalk.
	
	^ 3