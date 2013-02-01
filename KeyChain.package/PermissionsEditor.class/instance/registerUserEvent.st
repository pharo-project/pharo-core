initialize
registerUserEvent
	user
		whenChangedDo: [ :usr | 
			self updateTitle.
			canBrowse enabled: usr notNil.
			canDebug enabled: usr notNil.
			canDropOSFile enabled: usr notNil.
			canEditCode enabled: usr notNil.
			canEditUser enabled: usr notNil.
			canEvaluateCode enabled: usr notNil.
			canInspect enabled: usr notNil.
			canRunStartupScript enabled: usr notNil.
			canShowMorphHalo enabled: usr notNil.
			usr ifNotNil: [
				canBrowse state: usr canBrowse.
				canDebug state: usr canDebug.
				canDropOSFile state: usr canDropOSFile.
				canEditCode state: usr canEditCode.
				canEditUser state: usr canEditUser.
				canEvaluateCode state: usr canEvaluateCode.
				canInspect state: usr canInspect.
				canRunStartupScript state: usr canRunStartupScript.
				canShowMorphHalo state: usr canShowMorphHalo.
				self checkRoot. ]]