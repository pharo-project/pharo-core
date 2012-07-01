menus
methodListMenu: aMenu
	"Build the menu for the selected method, if any."
	
	self selectedMessageName 
		ifNil: [items notEmpty ifTrue: [aMenu addList:#(('FileOut (o)'	fileOutMessage))]]
		ifNotNil: [
			aMenu addList:#(
				('Browse full (b)' 						browseMethodFull)
				('Browse hierarchy (h)'					classHierarchy)
				('Browse method (O)'					openSingleMessageBrowser)
				-
				('FileOut (o)'							fileOutMessage)
				('Copy selector (c)'						copySelector)).
			aMenu addList: #(
				-
				('Browse senders (n)'						browseSendersOfMessages)
				('Browse implementors (m)'					browseMessages)
				('Inheritance (i)'						methodHierarchy)
				('Versions (v)'							browseVersions)
				('Change sets with this method'			findMethodInChangeSets)
	"			('X revert to previous version'				revertToPreviousVersion)"
				('Remove from current change set'		removeFromCurrentChanges)
		"		('X revert & remove from changes'		revertAndForget)"
				('Add to current change set'				adoptMessageInCurrentChangeset)
"				('X copy up or copy down...'				copyUpOrCopyDown)"
"				('X remove method (x)'					removeMessage)"
		"-"
		).
	].
"	aMenu addList: #(
			('x inst var refs...'						browseInstVarRefs)
			('x inst var defs...'						browseInstVarDefs)
			('x class var refs...'						browseClassVarRefs)
			('x class variables'						browseClassVariables)
			('x class refs (N)'							browseClassRefs)
	).
"
	^ aMenu
