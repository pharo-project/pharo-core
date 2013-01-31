context stack menu
contextStackMenu: aMenu
	self selectedContext selector = #doesNotUnderstand:
		ifTrue: [ self implementStackMenu: aMenu ].
		
	self isPostMortem 
		ifTrue: [ self postMortemStackActionMenu: aMenu]
		ifFalse: [ self stackActionMenu: aMenu ].
										
	aMenu addList: #(
		('Senders of... (n)'				browseSendersOfMessages)
		('Implementors of... (m)'		browseMessages)
		('Inheritance (i)'					methodHierarchy)
		('Versions (v)'					browseVersions)
		('Inst var refs...'				browseInstVarRefs)
		('Class var refs...'				browseClassVarRefs)
		('Class variables'				browseClassVariables)				
		-
		('Class refs (N)'					browseClassRefs)				
		('Browse full (b)'				browseMethodFull)	
		('File out'						fileOutMessage)									
		('Inspect instances'				inspectInstances)
		('Inspect subinstances'			inspectSubInstances)
		-
		('Copy to clipboard' 			copyToClipboard)
		('File out Stack' 				serializeStack)).							
	^ aMenu.										