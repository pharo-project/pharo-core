stepThroughAction

	self okToChange ifTrue: [  
		self session stepThrough: self currentContext ]