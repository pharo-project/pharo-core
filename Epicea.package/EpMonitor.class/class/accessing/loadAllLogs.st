loadAllLogs

	^self findLogFiles collect: [ :each | 
		EpLog newWithStore: (OmFileStore fromFile: each)]