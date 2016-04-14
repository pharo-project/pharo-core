b: c
	<gtExample>
	<depends: #c>
	<after: #afterB>
	<afterFinish: #afterBfinish>
	" START -> C -> afterC -> B -> afterB -> afterBfinish -> END "
	
	self assert: (self gtExampleContext includesKey: #c).
	self assert: (self gtExampleContext includesKey: #b) not