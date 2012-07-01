message list
shiftedMessageMenu: aMenu
	"Arm the menu so that it holds items appropriate to the message-list while the shift key is down.  Answer the menu."

	^ aMenu addList: #(
		-
		('Toggle diffing (D)'					toggleDiffing)
		('Implementors of sent messages'		browseAllMessages)
		('Change category...'				changeCategory)
			-
		('Inspect instances'					inspectInstances)
		('Inspect subinstances'				inspectSubInstances)
		-
		('Change sets with this method'		findMethodInChangeSets)
		('Revert to previous version'			revertToPreviousVersion)
		('Revert & remove from changes'	revertAndForget)
		-
		('More...'							unshiftedYellowButtonActivity))