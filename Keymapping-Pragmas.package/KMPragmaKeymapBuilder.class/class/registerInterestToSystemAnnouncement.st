system-events
registerInterestToSystemAnnouncement
	<systemEventRegistration>
	SystemAnnouncer unsubscribe: self.
	SystemAnnouncer current on: MethodAdded, MethodModified, MethodRemoved send: #event: to: self.