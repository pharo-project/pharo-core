a: b
	<gtExample>
	<depends: #b:>
	<after: #afterA>
	<afterFinish: #afterAfinish>
	
	self assert: (self gtExampleContext includesKey: #c).
	self assert: (self gtExampleContext includesKey: #b).
	self assert: (self gtExampleContext includesKey: #a) not
	