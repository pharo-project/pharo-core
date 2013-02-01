manifest
defectLikeHoodOf: aRule

	|tp fp|
	
	tp := (self allTruePositiveOf: aRule) size.
	fp := (self allFalsePositiveOf: aRule) size.
	
	^ tp + fp ~= 0 
		ifTrue: [(tp/(tp+fp)) asFloat] 
		ifFalse: [0]