initialize-release
connectToChanges
	SystemChangeNotifier uniqueInstance
		notify: self ofAllSystemChangesUsing: #update: