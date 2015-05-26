newDialog
	| d |
	d := RubFindReplaceDialogWindow new model: self.
	d findPolicyChanged.
	d announcer subscribe: MorphDeleted send: #whenDialogDeleted to: self.
	^ d
	