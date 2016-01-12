newDataSourceMatching: aRegex
	^ (super newDataSourceMatching: aRegex)
		glamourPresentation: self glamourPresentation;
		yourself