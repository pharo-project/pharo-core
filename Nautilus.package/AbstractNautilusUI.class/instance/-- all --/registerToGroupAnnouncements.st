registerToGroupAnnouncements
	GroupAnnouncer uniqueInstance weak
		when: AGroupHasBeenRegistered send: #aGroupHasBeenRegistered: to: self;
		when: AGroupHasBeenUnregistered send: #aGroupHasBeenUnregistered to: self;
		when: AGroupHasBeenAdded send: #aGroupHasBeenAdded: to: self;
		when: AGroupHasBeenRemoved send: #aGroupHasBeenRemoved: to: self;
		when: AGroupHasBeenRenamed send: #aGroupHasBeenRenamed: to: self