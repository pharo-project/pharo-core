private
exportPackage: package on: aStream
	"First, we serialize the package header and then the pacakge itself"
	FLSerializer newFull serialize: package packageHeader on: aStream. 
	
	
	"Now we nil the packageHeader from the FLPackage to avoid serializing it again. Then during materialization we put it back just in case."
	package packageHeader: nil.
	FLSerializer newFull
		analyzer:
				(FLPackageAnalyzer newDefault
						considerInternalAllBehaviors: package behaviors;
						considerInternalAllMethods: package originalExtensionMethods;
						yourself);
		serialize: package on: aStream