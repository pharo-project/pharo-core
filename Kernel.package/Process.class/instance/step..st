changing suspended state
step: aContext 
	"Resume self until aContext is on top, or if already on top, do next step"

	^ self suspendedContext == aContext
		ifTrue: [self step]
		ifFalse: [self complete: (self calleeOf: aContext)]