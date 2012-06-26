*RPackage-Core
extensionMethodsFromAllSystem
	^ ProtoObject withAllSubclasses gather: [:classOrTrait | self extensionMethodsForClass: classOrTrait]