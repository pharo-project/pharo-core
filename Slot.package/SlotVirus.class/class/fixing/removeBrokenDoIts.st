removeBrokenDoIts
	SystemNavigation default allClassesDo: [ :cls|
		cls methodDict removeKey: #DoItIn: ifAbsent: []].