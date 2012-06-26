class
categorizeAllUncategorizedMethodsOf: aClass
	"Categorize methods by looking in parent classes for a method category."

	| organizer organizers |
	organizer := aClass organization.
	organizers := aClass withAllSuperclasses collect: [:ea | ea organization].
	(organizer listAtCategoryNamed: ClassOrganizer default) do: [:sel | | found |
		found := (organizers collect: [ :org | org categoryOfElement: sel])
			detect: [:ea | ea ~= ClassOrganizer default and: [ ea ~= nil]]
			ifNone: [].
		found ifNotNil: [organizer classify: sel under: found]].