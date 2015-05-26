patch
	| snapshot base patch |
	
	snapshot := self silentSnapshot.
	base := self baseSnapshot.
	patch := base
		ifNil: [ MCPatch new initializeWithTarget: self snapshot ]
		ifNotNil: [ MCPatch new silentInitializeWithBase: base target: snapshot ].
		
	^ KomitPatch 
		base: base
		patch: patch