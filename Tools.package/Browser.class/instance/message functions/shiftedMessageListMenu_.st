shiftedMessageListMenu: aMenu
	"Fill aMenu with the items appropriate when the shift key is held down"

	aMenu addStayUpItem.
	aMenu addList: #(
		('Toggle diffing (D)'						toggleDiffing)
		('Implementors of sent messages'			browseAllMessages)
		-
		('Local senders of...'						browseLocalSendersOfMessages)
		('Local implementors of...'				browseLocalImplementors)
		-
		('Inspect instances'						inspectInstances)
		('Inspect subinstances'					inspectSubInstances)).

	self addExtraShiftedItemsTo: aMenu.
	aMenu addList: #(
		-
		('Change category...'					changeCategory)).

	self canShowMultipleMessageCategories ifTrue: [aMenu addList:
		 #(('Show category (C)'						showHomeCategory))].
	aMenu addList: #(
		-
		('More...' 								unshiftedYellowButtonActivity)).
	^ aMenu
