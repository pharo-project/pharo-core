*RPackage-SystemIntegration
systemClassReorganizedActionFrom: ann
	"when a class is reorganized, we have to check if an extension has not been added"
	
	|class|
	self flag: 'Not sure this method is usefull. If we remove a category, it seems that we will remove the methods inside, therefore the remove method announcement will do the job. Then all other modifications does not impact the packages'.
	"CD: All tests pass with this version"
	"The event ReorganizedEvent is lauched for several cases:
		- we rename a protocol (see 'renameCategory:toBe: '). if The category is not empty, SystemMethodRecategorizedAnnouncement will also be emitted // THE WORK WILL BE DONE BY  SystemMethodRecategorizedAnnouncement
		- we sort (modify the order of) protocols (see 'sortCategories') // WE DON'T CARE HERE
		- we add a protocol (see 'addCategory:before:') // WE DON'T CARE HERE'
		- we remove a protocol (see 'removeCategory:' 'removeEmptyCategories') // THE WORK SHOULD BE DONE BY  SystemMethodRemovedAnnouncement
	".
