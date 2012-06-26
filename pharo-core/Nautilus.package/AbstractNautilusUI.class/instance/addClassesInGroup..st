group
addClassesInGroup: aCollection

	(DialogGroupAdder new
		groups:	self groupsManager;
		elementsToAdd: ((aCollection collect: #theNonMetaClass) asSet asArray sort: [:a :b | a name < b name]))
		open