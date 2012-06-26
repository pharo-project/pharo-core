system startup
shutDown
	
	World ifNotNil:[
		World triggerEvent: #aboutToLeaveWorld.
	].