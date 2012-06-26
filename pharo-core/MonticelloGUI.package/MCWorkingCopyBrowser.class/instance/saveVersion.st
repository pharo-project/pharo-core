actions
saveVersion
	| repo newVersion|
	self canSave ifFalse: [ ^ self ].
	"fork the whole version creation "
	[ repo := self repository.
	newVersion := workingCopy newVersion.
	newVersion ifNil: [ ^ self ].
	Cursor wait showWhile: [
		[ repo storeVersion: newVersion.
		repo storeDependencies: newVersion ] 
			ensure: [ (MCVersionInspector new version: newVersion) show ]]] fork