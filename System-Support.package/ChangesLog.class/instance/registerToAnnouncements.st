event-listening
registerToAnnouncements
	SystemAnnouncer uniqueInstance 
	
		on: ClassRemoved 
		send: #logClassRemoved:
		to: self;
		
		on: MethodRemoved
		send: #logMethodRemoved:
		to: self;
		
		on: ExpressionEvaluated 
		send: #logExpressionEvaluated:
		to: self.