updating
setUpdateCallbackAfter: seconds

		deferredMessageRecipient ifNotNil: [ | d |
			d := Delay forSeconds: seconds.
			[  d wait.
				d := nil.
				deferredMessageRecipient addDeferredUIMessage: [self updateProcessList]
			] fork
		]