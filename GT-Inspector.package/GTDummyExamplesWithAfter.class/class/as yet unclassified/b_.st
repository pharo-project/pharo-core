b: c
	<gtExample>
	<depends: #c>
	<after: #afterB>
	" START -> C -> afterC -> B -> afterB -> END "
	
	self assert: (self gtExampleContext includesKey: #c) not.
	
	self gtExampleContext at: #b put: #b.
	self gtExampleContext at: #b2 put: #b2.
	
	self assert: ((self gtExampleContext at: #b) = #b).
	self assert: ((self gtExampleContext at: #b2) = #b2).
	
	^ #b2