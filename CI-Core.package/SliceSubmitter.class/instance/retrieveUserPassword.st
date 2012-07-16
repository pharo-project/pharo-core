initialize
retrieveUserPassword

	| ui user password |
	
	ui := Authentifier new.
	World openModal: ui openDialogWithSpec.
	^ ui result