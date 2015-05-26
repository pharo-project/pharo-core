asPackage
	^ self asPackageIfAbsent: [ NotFound signalFor: self ]