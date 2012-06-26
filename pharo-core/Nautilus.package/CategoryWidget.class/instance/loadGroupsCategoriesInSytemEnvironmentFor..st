private
loadGroupsCategoriesInSytemEnvironmentFor: class
	| group |

	group := self model selectedGroup.
	^ self loadCategoriesWithProtocols: (group protocolsFor: class ) forClass: class