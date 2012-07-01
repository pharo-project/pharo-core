public
hasNotificationsFor: anObject
	"Do we send system notifications to anObject?"

	^eventSource hasActionsWithReceiver: anObject