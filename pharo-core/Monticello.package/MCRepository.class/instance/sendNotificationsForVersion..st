as yet unclassified
sendNotificationsForVersion: aVersion
	| notification notifyList |
	notifyList := self notifyList.
	notifyList isEmpty ifFalse:
		[notification := self notificationForVersion: aVersion.
		notifyList do: [:ea | notification notify: ea]]