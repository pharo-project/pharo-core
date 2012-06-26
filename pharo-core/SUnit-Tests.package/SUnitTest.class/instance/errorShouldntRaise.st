testing
errorShouldntRaise
	self 
		shouldnt: [self someMessageThatIsntUnderstood] 
		raise: Notification new
			