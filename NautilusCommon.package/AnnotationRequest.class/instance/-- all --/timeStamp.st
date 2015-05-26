timeStamp
	"The time stamp of the last submission of the method."
	
	^ self method ifNotNil: [ self method timeStamp ]