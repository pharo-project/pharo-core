d
	<gtExample>
	<after: #afterD:d:d: arguments: #( varA varB varC )>
	" START -> D -> afterD:d:d: -> END "
	
	| varA varB varC |
	
	varA := Object new.
	varB := Smalltalk.
	varC := 'abc'.	
			
	^ 1