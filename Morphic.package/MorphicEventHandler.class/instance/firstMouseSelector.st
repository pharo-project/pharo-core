access
firstMouseSelector
	"Answer the selector corresponding to the first mouse-handling selector fielded.  Created in support of providing balloon-help for halo handles, triggered by the selector handled"
	^(subscriptions detect: [ :s | s isMouseSubscription ] ifNone: [ ^nil ]) recipient.
"	mouseDownSelector ifNotNil: [^ mouseDownSelector].
	mouseMoveSelector ifNotNil:[^mouseMoveSelector].
	mouseStillDownSelector ifNotNil: [^ mouseStillDownSelector].
	mouseUpSelector ifNotNil: [^ mouseUpSelector].
	mouseEnterSelector ifNotNil: [^ mouseEnterSelector].
	mouseLeaveSelector ifNotNil: [^ mouseLeaveSelector].
	mouseEnterDraggingSelector ifNotNil: [^ mouseEnterDraggingSelector].
	mouseLeaveDraggingSelector ifNotNil: [^ mouseLeaveDraggingSelector].
	doubleClickSelector ifNotNil: [^ doubleClickSelector]."