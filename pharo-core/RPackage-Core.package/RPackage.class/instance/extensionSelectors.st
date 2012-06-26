accessing
extensionSelectors
	"Extension methods are methods defined on classes that are not defined in the receiver"
	
	| classSels |
	classSels := Set new.
	classExtensionSelectors values do: [:each | classSels addAll: each].
	metaclassExtensionSelectors values do: [:each | classSels addAll: each].
	^ classSels.
	