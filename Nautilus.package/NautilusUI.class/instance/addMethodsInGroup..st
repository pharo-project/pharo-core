group
addMethodsInGroup: aCollection

	(DialogGroupAdder new
		groups: self groupsManager;
		elementsToAdd: (aCollection sort: [:a :b | a name < b name]))
		open