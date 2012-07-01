file support
suggestedFileName
	"If the workspace has an associated fileName use that, otherwise derive a reasonable file-name from the window label"

	| labelToUse suggestedName lastIndex |

	self fileName ifNotNil: [ :f | ^ f ].
						
	^ (self containingWindow 
		ifNil: ['Untitled']
		ifNotNilDo:	[ :window |  window label ]), '.ws'