private
loadPackagesCategoriesInSystemEnvironmentFor: class
	| group |
	
	group := self model selectedGroup.
	^ self loadCategoriesWithProtocols: class protocols forClass: class