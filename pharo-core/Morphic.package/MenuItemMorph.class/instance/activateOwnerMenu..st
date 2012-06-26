events
activateOwnerMenu: evt
	"Activate our owner menu; e.g., pass control to it"
	owner ifNil:[^false]. "not applicable"
	(owner fullContainsPoint: evt position) ifFalse:[^false].
	owner activate: evt.
	^true