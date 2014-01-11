switchUsers: aBuilder 
	"I build a menu"
	"<worldMenu>" "md: disabled because it is broken for all of Pharo3 development."
	(aBuilder item: #'Switch User')
		parent: #System;
		order: 1.5;
		icon: (Smalltalk ui icons iconNamed: #userIcon);
		action: [ self default openSwitchUsers ]