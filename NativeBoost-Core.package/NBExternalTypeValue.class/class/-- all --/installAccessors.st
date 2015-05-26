installAccessors
	"Copy superclass methods, which serve as a template where generated code will be installed.
	Each subclass of NBTypeValue should implement (override) these key methods "
	Author useAuthor: 'NativeBoost' during: [ 
		self basicAddSelector: #value withMethod: (NBExternalTypeValue >> #value ) copy.
		self basicAddSelector: #value: withMethod: (NBExternalTypeValue >> #value: ) copy.
		self organization classify:  #value under: NativeBoost automaticallyGeneratedCodeCategory.
		self organization classify:  #value: under: NativeBoost automaticallyGeneratedCodeCategory.
	].