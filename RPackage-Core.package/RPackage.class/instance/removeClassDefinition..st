class addition
removeClassDefinition: aClass
	"Remove the class definition from the package but not its methods."
	
	| removed aClassName|
	aClassName := aClass theNonMetaClass name.
	removed := classes remove: aClassName ifAbsent: [nil].
	removed ifNotNil: [
			self definedMethodsShouldBecomeExtensionWhenRemovingClass: aClassName.
			self unregisterClass: aClass.] 
	