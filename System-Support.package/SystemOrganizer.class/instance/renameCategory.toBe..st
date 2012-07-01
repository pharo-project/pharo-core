accessing
renameCategory: oldCatString toBe: newCatString
	| r |
	r := super renameCategory: oldCatString toBe: newCatString.
	SystemChangeNotifier uniqueInstance 
		classCategoryRenamedFrom: oldCatString to: newCatString.
	^ r