initialize
	super initialize.

	updateProcess := [ 
		self objectChanged. 
		self hasWindow 
			ifFalse: [ updateProcess terminate ] 
	] valueWithInterval: self updateTime.