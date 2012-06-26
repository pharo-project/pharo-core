querying
workingCopy
	"Answer a working copy or throw an error if not present."

	^ MCWorkingCopy allManagers
		detect: [ :each | self packageName = each packageName ]
		ifNone: [ self error: 'Working copy for ' , self name , ' not found' ]