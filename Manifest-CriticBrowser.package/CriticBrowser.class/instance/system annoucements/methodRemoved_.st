methodRemoved: anAnnouncement

	| classes |
	classes := (rbEnvironment packages gather: [ :package | package packageSet packages])
		gather: [ :p | p classes].
	(classes anySatisfy: [ :cl | anAnnouncement methodClass = cl ]) 
				ifFalse: [ ^ self ].
	cache itemRemoved: anAnnouncement methodRemoved