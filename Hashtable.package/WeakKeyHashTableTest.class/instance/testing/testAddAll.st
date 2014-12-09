testAddAll
	"(self run: #testAddAll)"
	
	|  table2 |
	table at: #a put:1.
	table at: #b put: 2. 
	
	table2 := table species new.
	table2 at: #a put: 3.
	table2 at: #c put: 4.
	
	table addAll: table2.
	self assert: (table at: #a) = 3.
	self assert: (table at: #b) = 2.
	self assert: (table at: #c) = 4.