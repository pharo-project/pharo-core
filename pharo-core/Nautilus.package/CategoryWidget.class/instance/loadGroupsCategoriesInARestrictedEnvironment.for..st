private
loadGroupsCategoriesInARestrictedEnvironment: env for: class
	| group |
	
	group := self model selectedGroup.
	^ self loadCategoriesWithProtocols: ((group protocolsFor: class ) intersection: ( env protocolsFor: class )) forClass: class