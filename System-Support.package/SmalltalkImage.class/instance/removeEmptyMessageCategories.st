housekeeping
removeEmptyMessageCategories
	"Smalltalk removeEmptyMessageCategories"
	self garbageCollect.
	(ClassOrganizer allInstances copyWith: SystemOrganization)
		do: [:org | org removeEmptyCategories]