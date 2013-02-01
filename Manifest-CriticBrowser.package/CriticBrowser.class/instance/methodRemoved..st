system annoucements
methodRemoved: anAnnouncement

	(rbEnvironment classes anySatisfy: [ :cl | anAnnouncement methodClass = cl ])
		ifFalse: [ ^ self ].
	rulesModel getRoots do: [:root |
		root leaves do: [ :rule |
			 self removeClass: anAnnouncement methodClass selector: anAnnouncement selector onRule: rule]].
	self updateTree