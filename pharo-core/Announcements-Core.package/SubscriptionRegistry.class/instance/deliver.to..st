private
deliver: anAnnouncement to: subs
	
	subs do: 
		[:each | 
		[each deliver: anAnnouncement] 
			"Ensure delivery to remaining announcements"
			ifCurtailed: [self deliver: anAnnouncement to: (subs copyAfter: each)]]