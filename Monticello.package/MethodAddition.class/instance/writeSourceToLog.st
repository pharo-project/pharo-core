as yet unclassified
writeSourceToLog
	logSource ifTrue: [
		myClass logMethodSource: text forMethodWithNode: methodAndNode 
			inCategory: category withStamp: changeStamp notifying: requestor.
	].
