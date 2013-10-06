stepOverAction

	self okToChange ifTrue: [  
		self session stepOver: self currentContext ]