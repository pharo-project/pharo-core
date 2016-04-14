b2: argB
	<gtExample>
	<depends: #c:>
	<after: #afterB:b: arguments: #( varA varB argB )> " mistake "
	<raises: #KeyNotFound> 
	" START -> D -> afterD:d:d: -> C -> afterC:c:c: -> B -> afterB:b: [ERROR] -> END "
	
	| varA varB |
	
	self assert: argB = 2.
	
	varA := GTExample new.
	varB := Smalltalk.
	
	^ 3