snapshotDone: aSnapshotDone
	aSnapshotDone isNewImage 
"		ifTrue: [ self restartSession ]"
		ifFalse: [ self sessionSnapshot ]