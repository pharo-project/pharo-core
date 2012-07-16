context stack menu
shiftedContextStackMenu: aMenu
	^ aMenu
				labels: 'Browse class hierarchy
Browse class
Implementors of sent messages
Change sets with this method
Inspect instances
Inspect subinstances
Revert to previous version
Remove from current change set
Revert & remove from changes
More...'
				lines: #(5 7 10 )
				selections: #(#classHierarchy #browseClass  #browseAllMessages #findMethodInChangeSets #inspectInstances #inspectSubInstances #revertToPreviousVersion #removeFromCurrentChanges #revertAndForget #unshiftedYellowButtonActivity )