*gofer-core-accessing
goferVersionFrom: aVersionReference
	^ self loadVersionFromFileNamed: aVersionReference name , '.mcz'