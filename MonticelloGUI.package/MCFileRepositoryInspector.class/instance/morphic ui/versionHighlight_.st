versionHighlight: aString
	| verName paName |
	verName := (aString copyUpToLast: $.) copyUpTo: $(.
	paName := verName copyUpToLast: $-.
	^ Text
		string: aString
		attribute:
			(TextEmphasis new
				emphasisCode:
					((loaded includes: verName)
						ifTrue: [ 4	"underlined" ]
						ifFalse: [ 
							(newer includes: aString)
								ifTrue: [ 1	"bold" ]
								ifFalse: [ 
									(loadedPackages includes: paName)
										ifFalse: [ 1 ]
										ifTrue: [ 0 ] ] ]))