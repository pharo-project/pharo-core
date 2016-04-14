c
	<gtExample>
	<after: #afterC>
	<afterFinish: #afterCfinish>
	" START -> C -> afterC -> afterCfinish -> END "
	
	self assert: (self gtExampleContext includesKey: #c) not