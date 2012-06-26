accessing
activateAnnouncerForSystemChanges

	(SystemChangeNotifier uniqueInstance hasNotificationsFor: self)
		ifFalse:  [SystemChangeNotifier uniqueInstance notify: self ofAllSystemChangesUsing: #announceFromEvent:]