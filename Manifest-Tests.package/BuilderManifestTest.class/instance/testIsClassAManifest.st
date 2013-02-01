tests
testIsClassAManifest
	"self debug: #testIsClassAManifest"
	
	self deny: Point isManifest.
	BuilderManifest on: MFClassA. 
	self assert: ( (Smalltalk at: #ManifestManifestResourcesTests) isManifest)