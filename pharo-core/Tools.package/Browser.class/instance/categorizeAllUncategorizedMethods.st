message category list
categorizeAllUncategorizedMethods
	"Categorize methods by looking in parent classes for a method category."

	| organizer organizers |
	organizer := self classOrMetaClassOrganizer.
	organizers := self selectedClassOrMetaClass withAllSuperclasses collect: [:ea | ea organization].
	(organizer listAtCategoryNamed: ClassOrganizer default) do: [:sel | | found |
		found := (organizers collect: [ :org | org categoryOfElement: sel])
			detect: [:ea | ea ~= ClassOrganizer default and: [ ea ~= nil]]
			ifNone: [].
		found ifNotNil: [organizer classify: sel under: found]].

	self changed: #messageCategoryList