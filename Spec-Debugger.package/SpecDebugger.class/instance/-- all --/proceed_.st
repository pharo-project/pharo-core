proceed: aTopView 
	
	self okToChange ifTrue: [  
		self session 
			resume;
			clear.
		self debugger close ]
