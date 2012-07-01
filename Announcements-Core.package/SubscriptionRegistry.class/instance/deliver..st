announcing
deliver: anAnnouncement
	|  subsCopy |
	
	"using a copy, so subscribers can unsubscribe from announcer "
	"Use OrderedCollection , so unwind protection is easier"
	subscriptions isEmpty ifTrue:[ ^ self ].
	self protected: [ subsCopy := subscriptions as: OrderedCollection ].
	self deliver: anAnnouncement to: subsCopy