system changes
classRemoved: anEvent
	"Informs the registry who use to keep this class that its changed. Unlike #classModified:, class is not anymore in RPackages so it will not be found, that's why we look for system category instead if class is included or not"
	self registry do: [:mgr |
		(mgr packageSet includesSystemCategory: anEvent classAffected category)
			ifTrue: [ mgr modified: true ] ]