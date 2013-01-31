actions
basicSaveVersionIn: aRepository
	| newVersion waitForVersion |
	waitForVersion := Semaphore new.
	
	WorldState addDeferredUIMessage: [
		newVersion := workingCopy newVersion.
		waitForVersion signal ].
	
	self flag: 'TODO: only wait when not called from UI thread due. Will lock the UI otherwise'.
	waitForVersion wait.
	newVersion ifNil: [ ^ self ]. 
	
	Cursor wait showWhile: [
		[ aRepository storeVersion: newVersion.
		aRepository storeDependencies: newVersion ] 
			ensure: [ (MCVersionInspector new version: newVersion) show ]]