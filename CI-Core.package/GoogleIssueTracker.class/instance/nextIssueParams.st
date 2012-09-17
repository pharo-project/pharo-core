issues
nextIssueParams.
	^ String streamContents: [ :s|
		s 
			nextPutAll: 'can=open&status=';
			nextPutAll: PharoTrackerLabels reviewNeeded;
			nextPutAll: '&q=Milestone%3D';
			print: SystemVersion current dottedMajorMinor]