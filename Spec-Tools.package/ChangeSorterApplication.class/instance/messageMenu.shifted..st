menu
messageMenu: aMenu shifted: shifted
	"Fill aMenu with items appropriate for the message list; could be for a single or double changeSorter"

	self selectedSelector ifNil: [ ^ nil ].	
	aMenu title: 'Message list'.
	aMenu target: self.

	aMenu addList: #(
			('Delete method from changeSet (d)'	forgetMessage)
			('Remove method from system (x)'		removeMessage)
				-
			('Browse full (b)'						browseMethodFull)
			-
			('FileOut'								fileOutMessage)
			-
			('Senders of... (n)'						browseSendersOfMessages)
			('Implementors of... (m)'				browseImplementorsOfMessages)
			('Versions (v)'							browseVersions)).
	^ aMenu
