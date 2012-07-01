public
noMoreNotificationsFor: anObject
	"Stop sending system notifications to an object."

	eventSource removeActionsWithReceiver: anObject