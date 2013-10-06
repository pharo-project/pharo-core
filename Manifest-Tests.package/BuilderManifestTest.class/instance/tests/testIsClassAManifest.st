testIsClassAManifest
	"self debug: #testIsClassAManifest"
	
	self deny: Point isManifest.
	BuilderManifest of: MFClassA. 
	self assert: ( (Smalltalk at: #ManifestManifestResourcesTests) isManifest)