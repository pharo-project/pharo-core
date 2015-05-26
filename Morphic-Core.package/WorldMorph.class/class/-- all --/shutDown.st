shutDown
	World ifNotNil: [:world | world triggerEvent: #aboutToLeaveWorld ]