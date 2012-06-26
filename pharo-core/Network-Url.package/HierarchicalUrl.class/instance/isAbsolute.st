access
isAbsolute
	
	path size > 0 ifFalse: [^ false].
	(path at: 1) size > 0 ifFalse: [^ false].
	^ ((path at: 1) at: 1) ~~ $.