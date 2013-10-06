checkRoot
	| bool |
	bool := (	(canBrowse state and: [
		canDebug state and: [ 
		canDropOSFile state and: [ 
		canEditCode state and: [ 
		canEditUser state and: [ 
		canEvaluateCode state and: [ 
		canInspect state and: [ 
		canRunStartupScript state and: [ 
		canShowMorphHalo state ]]]]]]]]) = true ) .

	lock := true.
	isRoot state: bool.	

	lock := false