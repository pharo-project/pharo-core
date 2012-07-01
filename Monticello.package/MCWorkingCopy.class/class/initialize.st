initialize
initialize
	"self initialize"
	registry ifNotNil: [ registry rehash ].
	self allInstancesDo: [ :each | 
			"moved notifications"
			Smalltalk globals at: #SystemChangeNotifier 
						ifPresent: [ :cls | cls uniqueInstance noMoreNotificationsFor: each ] ].
	self registerForNotifications.