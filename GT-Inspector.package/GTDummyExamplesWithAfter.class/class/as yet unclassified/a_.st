a: b
	<gtExample>
	<depends: #b:>
	<after: #afterA>
	" START -> C -> afterC -> B -> afterB -> A -> afterA -> END "
	
	self assert: (self gtExampleContext includesKey: #c) not.
	self assert: (self gtExampleContext includesKey: #b) not.
	
	self assert: (self gtExampleContext includesKey: #c2).
	self assert: (self gtExampleContext includesKey: #b2).