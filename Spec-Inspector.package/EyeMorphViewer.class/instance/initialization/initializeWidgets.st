initializeWidgets
	super initializeWidgets.
	
	self whenWindowChanged: [ self objectChanged ].
	updateProcess := [ 
		self objectChanged. 
		self hasWindow 
			ifFalse: [ updateProcess terminate ] 
	] valueWithInterval: self updateTime.