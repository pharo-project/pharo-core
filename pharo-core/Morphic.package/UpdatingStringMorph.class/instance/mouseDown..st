event handling
mouseDown: evt
	"The mouse went down over the receiver.  If appropriate, launch a mini-editor so that the user can commence text-editing here"

	(owner wantsKeyboardFocusFor: self) ifTrue:
		[self userEditsAllowed ifTrue:
			[(owner respondsTo: #parseNode)
					ifTrue: 	"leave space for editing"
						[minimumWidth := (49 max: minimumWidth)].
			self launchMiniEditor: evt]]