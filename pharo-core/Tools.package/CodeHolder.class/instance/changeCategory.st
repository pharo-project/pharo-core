categories
changeCategory
	"Present a menu of the categories of messages for the current class, 
	and let the user choose a new category for the current message"

	| aClass aSelector |
	(aClass := self selectedClassOrMetaClass) ifNotNil:
		[(aSelector := self selectedMessageName) ifNotNil:
			[(self letUserReclassify: aSelector in: aClass) ifTrue:
				["ChangeSet current reorganizeClass: aClass."
				"Decided on further review that the above, when present, could cause more
                    unexpected harm than good"
				self methodCategoryChanged]]]