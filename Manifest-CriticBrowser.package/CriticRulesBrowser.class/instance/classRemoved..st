system annoucements
classRemoved: anAnnouncement
	(environment classes anySatisfy: [ :cl | anAnnouncement classRemoved = cl ])
		ifFalse: [ ^ self ].
	rulesModel getList
		do: [ :rule | self removeClass: anAnnouncement classRemoved onRule: rule].
	self updateTree