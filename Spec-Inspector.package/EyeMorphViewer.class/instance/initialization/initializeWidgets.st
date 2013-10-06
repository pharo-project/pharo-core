initializeWidgets
	super initializeWidgets.
	
	self whenWindowChanged: [ self objectChanged ].
	updateProcess := [ self objectChanged ] valueWithInterval: 2 seconds.