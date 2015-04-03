assertVersion: aMethodName
	| announcement |
	announcement := recorder materialize: (self perform: aMethodName).
	self assertAnnouncement: announcement.
	checkedEvents addAll: (announcement materializedData collect: #class).