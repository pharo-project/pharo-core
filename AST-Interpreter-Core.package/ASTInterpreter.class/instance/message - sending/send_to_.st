send: aMessage to: receiver
	^ self
		send: aMessage
		to: receiver
		class: (self classOf: receiver)