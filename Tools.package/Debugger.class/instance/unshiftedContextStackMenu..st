context stack menu
unshiftedContextStackMenu: aMenu
	self selectedContext selector = #doesNotUnderstand:
		ifTrue: [ self implementStackMenu: aMenu ].
		
	self isPostMortem 
		ifTrue: [ self postMortemStackActionMenu: aMenu]
		ifFalse: [ self stackActionMenu: aMenu ].
	
	^ aMenu
		labels: 'Senders of... (n)
Implementors of... (m)
Inheritance (i)
Versions (v)
Inst var refs...
Inst var defs...
Class var refs...
Class variables
Class refs (N)
Browse full (b)
File out
Copy to clipboard
More...'
		lines: #(35 8 11)
		selections: #(#browseSendersOfMessages #browseMessages #methodHierarchy #browseVersions #browseInstVarRefs #browseInstVarDefs #browseClassVarRefs #browseClassVariables #browseClassRefs #browseMethodFull #fileOutMessage #copyToClipboard #shiftedYellowButtonActivity)
