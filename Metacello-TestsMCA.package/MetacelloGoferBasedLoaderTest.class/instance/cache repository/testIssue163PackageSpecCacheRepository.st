testIssue163PackageSpecCacheRepository
	"test for Issue 163: http://code.google.com/p/metacello/issues/detail?id=163"

	| project version loader cacheRepository mcVersion mcVersionInfo files |
	cacheRepository := MCDictionaryRepository new.	"preload cacheRepository with all of the files ... only the configurations should be fetched"
	#('MetacelloTestConfigurationOfIssue77B-dkh.1' 'MetacelloTestConfigurationOfIssue77C-dkh.1' 'MetacelloTestConfigurationOfIssue77D-dkh.1')
		do: [ :file | 
			mcVersionInfo := self configurationRepository sortedVersionInfos detect: [ :info | info name = file ].
			mcVersion := self configurationRepository versionWithInfo: mcVersionInfo ifAbsent: [  ].
			cacheRepository storeVersion: mcVersion	"preload cache with one of the configurations, shouldn't prevent the successful fetch of packages" ].
	#('GoferBar-lr.1' 'GoferBeau-dkh.53' 'GoferFoo-lr.1' 'GoferFoo-lr.4')
		do: [ :file | 
			mcVersionInfo := self monticelloRepository sortedVersionInfos detect: [ :info | info name = file ].
			mcVersion := self monticelloRepository versionWithInfo: mcVersionInfo ifAbsent: [  ].
			cacheRepository storeVersion: mcVersion	"preload cache with one of the configurations, shouldn't prevent the successful fetch of packages" ].
	project := self project.
	version := project version: 'Issue77-baseline'.
	version cacheRepository: cacheRepository.
	loader := version fetch.
	self assert: cacheRepository dictionary size = 7.
	#('GoferBar-lr.1' 'GoferBeau-dkh.53' 'GoferFoo-lr.1' 'GoferFoo-lr.4' 'MetacelloTestConfigurationOfIssue77B-dkh.1' 'MetacelloTestConfigurationOfIssue77C-dkh.1' 'MetacelloTestConfigurationOfIssue77D-dkh.1')
		do: [ :file | self assert: (cacheRepository includesVersionNamed: file) ].
	files := #('MetacelloTestConfigurationOfIssue77B-dkh.1' 'MetacelloTestConfigurationOfIssue77D-dkh.1' 'MetacelloTestConfigurationOfIssue77C-dkh.1')
		asOrderedCollection.
	loader loadDirective
		packageDirectivesDo: [ :pkgDirective | 
			| file |
			file := pkgDirective file.
			(MetacelloPlatform current string: file includesSubstring: 'Configuration')
				ifTrue:  [ self assert: (files includes: file) ]
				ifFalse: [ self assert: (files indexOf: file) = 1 ].
			files remove: file ifAbsent: [ self assert: false ] ].
	self assert: files isEmpty