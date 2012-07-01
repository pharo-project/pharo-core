world menu
delayedInvokeWorldMenu: evt 
	self
		addAlarm: #invokeWorldMenu:
		with: evt
		after: 200