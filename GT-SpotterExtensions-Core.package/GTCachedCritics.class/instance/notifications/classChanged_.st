classChanged: aClassAnnouncement
	(aClassAnnouncement classAffected includesBehavior: RBLintRule) ifFalse: [ ^ self ].
	self resetAll