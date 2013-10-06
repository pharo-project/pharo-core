registerToGroupAnnouncements
	GroupAnnouncer uniqueInstance weak
		on: AGroupHasBeenRegistered send: #aGroupHasBeenRegistered: to: self;
		on: AGroupHasBeenUnregistered send: #aGroupHasBeenUnregistered to: self;
		on: AGroupHasBeenAdded send: #aGroupHasBeenAdded: to: self;
		on: AGroupHasBeenRemoved send: #aGroupHasBeenRemoved: to: self;
		on: AGroupHasBeenRenamed send: #aGroupHasBeenRenamed: to: self