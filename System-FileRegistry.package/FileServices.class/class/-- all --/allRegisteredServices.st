allRegisteredServices
	"self allRegisteredServices"

	| allServices |
	allServices := OrderedCollection new.
	self registeredFileReaderClasses do: [:each | 
		allServices addAll: (each services)].
	^ allServices