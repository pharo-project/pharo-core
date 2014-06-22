modalFolderSelector: aDir

	| window fileModel |
	window := self morphicViewFolderSelector: aDir.
	fileModel := window model.
	window openInWorld: self currentWorld extent: 300@400.
	World openModal: window.
	^fileModel getSelectedFolder