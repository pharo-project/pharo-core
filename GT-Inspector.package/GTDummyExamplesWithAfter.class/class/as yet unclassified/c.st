c
	<gtExample>
	<after: #afterC>
	" START -> C -> afterC -> END "
	
	self gtExampleContext at: #c put: #c.
	self gtExampleContext at: #c2 put: #c2.
	
	self assert: ((self gtExampleContext at: #c) = #c).
	self assert: ((self gtExampleContext at: #c2) = #c2).
	
	^ #c2