versionHighlight: aString
	| verName |
	verName := (aString copyUpToLast: $.) copyUpTo: $(.
	^ Text
		string: aString
		attribute:
			(TextEmphasis new
				emphasisCode:
					((loaded includes: verName)
						ifTrue: [ 4	"underlined" ]
						ifFalse: [ 
							(newer includes: aString)
								ifFalse: [ 0 ]
								ifTrue: [ 1	"bold" ] ]))