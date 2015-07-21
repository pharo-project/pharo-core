registerToClassAnnouncements

	SystemAnnouncer uniqueInstance weak
		when: ClassRemoved send: #classRemoved: to: self