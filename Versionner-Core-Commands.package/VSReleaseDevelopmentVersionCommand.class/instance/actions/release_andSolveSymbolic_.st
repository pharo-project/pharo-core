release: releaseVersionString andSolveSymbolic: needsSymbolicVersionResolution
	| workflow |
	
	workflow := target.
	releaseVersionString 
		ifNil: [	UIManager default inform: 'Release aborted! Specify a valid release version string.'.
				^ self ].

	[ 	workflow releaseDevelopment: releaseVersionString.
		needsSymbolicVersionResolution
			ifTrue: [ self resolveSymbolicVersionsIn: (self mcVersionFor: releaseVersionString) ] ]
		on: MetacelloValidationFailure 
		do: [ :error | (VSConfigurationValidationIssuesDisplayCommand target: error for: self) execute].
