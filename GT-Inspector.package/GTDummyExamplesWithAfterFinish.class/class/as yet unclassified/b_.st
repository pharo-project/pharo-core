b: c
	<gtExample>
	<depends: #c>
	<after: #afterB>
	<afterFinish: #afterBfinish>
	
	self assert: (self gtExampleContext includesKey: #c).
	self assert: (self gtExampleContext includesKey: #b) not