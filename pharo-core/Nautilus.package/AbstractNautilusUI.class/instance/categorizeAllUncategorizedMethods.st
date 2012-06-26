menus behavior
categorizeAllUncategorizedMethods
	"Categorize methods by looking in parent classes for a method category."
	| aClass organizer organizers |
	aClass := self selectedClass.
	
	self categorizeAllUncategorizedMethodsOf: aClass.
	
	organizer := aClass organization.
	(organizer listAtCategoryNamed: ClassOrganizer default) do: [:sel |
		(sel beginsWith: 'test')
			ifTrue: [ organizer classify: sel under: 'tests' ]].

	" no need to update, announcements do the job "