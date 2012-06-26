*Ring-Core-Kernel
asFullRingDefinition

	"A trait is converted to a ring trait including its methods, direct superclass and the package in which is loaded.
	Active methods are generated and each knows its package as well.
	Note that for its direct superclass no full definitions is requested. If you need to traverse hierarchies use #asRingDefinitionWithMethods:withSuperclasses:withSubclasses:withPackages:"	
	| rgClass rgSuper rgSub rgMethod packageKeys |
	rgClass:= self asRingDefinition.
	rgClass package: (RGContainer packageOfClass: rgClass).
	
	rgSuper := Trait asRingDefinition.
	rgClass superclass: rgSuper.

	packageKeys := RGContainer packageKeys.
	self methodsDo:[ :mth|  
			rgMethod := mth asActiveRingDefinition.
			rgClass addMethod: rgMethod.
			rgMethod package: (RGContainer packageOfMethod: rgMethod using: packageKeys) ].
	self theMetaClass methodsDo:[ :mth|  
			rgMethod := mth asActiveRingDefinition.
			rgClass theMetaClass addMethod: rgMethod.
			rgMethod package: (RGContainer packageOfMethod: rgMethod using: packageKeys) ].
	
	^rgClass
