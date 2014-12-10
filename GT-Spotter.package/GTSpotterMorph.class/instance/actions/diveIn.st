diveIn

	self spotterModel isEmpty ifFalse: [ 
		self spotterModel currentStep isEmpty ifFalse: [ 
			self spotterModel currentStep diveIn ] ]