initialization
startUp
	SystemChangeNotifier uniqueInstance notify: Smalltalk ofAllSystemChangesUsing: #event:.
	Smalltalk openSourceFiles