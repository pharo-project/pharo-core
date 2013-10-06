commit: workingCopy in: repo
	| newVersion |

	newVersion := workingCopy newVersion.
	newVersion ifNil: [ ^ self ].
	Cursor wait showWhile: [
		[ 	repo storeVersion: newVersion.
			repo storeDependencies: newVersion ] 
		ensure: [ (MCVersionInspector new version: newVersion) show ]]