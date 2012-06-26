menu
messageMenu: aMenu shifted: shifted
	"Fill aMenu with items appropriate for the message list; could be for a single or double changeSorter"

	shifted ifTrue: [^ self shiftedMessageMenu: aMenu].

	aMenu title: 'message list'.
	aMenu addStayUpItemSpecial.

	parent ifNotNil:
		[aMenu addList: #(
			('Copy method to other side'			copyMethodToOther)
			('Move method to other side'			moveMethodToOther))].

	aMenu addList: #(
			('Delete method from changeSet (d)'	forget)
			-
			('Remove method from system (x)'	removeMessage)
				-
			('Browse full (b)'					browseMethodFull)
			('Browse hierarchy (h)'				spawnHierarchy)
			('Browse method (O)'				openSingleMessageBrowser)
			-
			('FileOut'							fileOutMessage)
			-
			('Senders of... (n)'					browseSendersOfMessages)
			('Implementors of... (m)'				browseMessages)
			('Inheritance (i)'					methodHierarchy)
			('Versions (v)'						browseVersions)
			-
			('More...'							shiftedYellowButtonActivity)).
	^ aMenu
