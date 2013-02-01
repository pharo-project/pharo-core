initialize
initializeDialogWindow: aWindow

	aWindow
		okAction: [ 
			user contents
				ifNotNil: [ :usr | 
					usr canBrowse: canBrowse state.
					usr canDebug: canDebug state.
					usr canDropOSFile: canDropOSFile state.
					usr canEditCode: canEditCode state.
					usr canEditUser: canEditUser state.
					usr canEvaluateCode: canEvaluateCode state.
					usr canInspect: canInspect state.
					usr canRunStartupScript: canRunStartupScript state.
					usr canShowMorphHalo: canShowMorphHalo state ] ]