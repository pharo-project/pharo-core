initialize
registerIsRootEvents
	isRoot
		whenChangedDo: [ :bool | 
			lock ifFalse: [ 
					canBrowse state: bool.
					canDebug state: bool.
					canDropOSFile state: bool.
					canEditCode state: bool.
					canEditUser state: bool.
					canEvaluateCode state: bool.
					canInspect state: bool.
					canRunStartupScript state: bool.
					canShowMorphHalo state: bool ]]