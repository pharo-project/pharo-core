*rpackage-systemintegration
unregisterForNotifications
	Smalltalk globals
		at: #SystemChangeNotifier
		ifPresent:
			[:cls|
			cls uniqueInstance noMoreNotificationsFor: self]
		