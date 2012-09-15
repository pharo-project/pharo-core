announcements registration
registerToClassAnnouncements

	SystemAnnouncer uniqueInstance weak
		on: ClassRemoved send: #classRemoved: to: self