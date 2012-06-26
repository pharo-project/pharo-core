as yet unclassified
versionWithInfo: aVersionInfo ifAbsent: errorBlock
	"get a version for the given versionInfo. always query first the packageCache and only then try to load the version from the remote location"
	^ MCCacheRepository default
		versionWithInfo: aVersionInfo 
		ifAbsent: [
			(self allFileNamesForVersionNamed: aVersionInfo name) do:
				[:fileName | | version |
				version := self versionFromFileNamed: fileName.
				version info = aVersionInfo ifTrue: [^ version]].
			^ errorBlock value].