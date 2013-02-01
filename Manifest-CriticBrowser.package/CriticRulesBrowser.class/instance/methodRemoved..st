system annoucements
methodRemoved: anAnnouncement
	(environment classes anySatisfy: [ :cl | anAnnouncement itemClass = cl ])
		ifFalse: [ ^ self ].
	rulesModel getRoots do: [:root |
		root leaves do: [ :rule |
			 self removeClass: anAnnouncement methodClass selector: anAnnouncement selector onRule: rule]].
	self updateTree