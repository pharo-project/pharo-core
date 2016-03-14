testLastInSessionManager

	self assert: (SessionManager default hasRegistered: SystemSettingsPersistence name).
	self assert: SessionManager default startupList last handledId = SystemSettingsPersistence name