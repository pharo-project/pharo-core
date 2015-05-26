openRemoveDialogOn: aGroup

	^UIManager default confirm: ('Dou you really want to delete the group named ', aGroup name)