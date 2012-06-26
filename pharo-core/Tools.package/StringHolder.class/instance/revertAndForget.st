*Tools
revertAndForget
	"Revert to the previous version of the current method, and tell the changes mgr to forget that it was ever changed.  Danger!  Use only if you really know what you're doing!"

	self okToChange ifFalse: [^ self].
	self revertToPreviousVersion.
	self removeFromCurrentChanges.
	self contentsChanged
