private
installAccessors
	"Copy superclass methods, which serve as a template where generated code will be installed.
	Each subclass of NBExternalArray should implement (override) these key methods "
	self basicAddSelector: #at: withMethod: (NBExternalArray >> #at: ) copy.
	self basicAddSelector: #at:put: withMethod: (NBExternalArray >> #at:put: ) copy.
	