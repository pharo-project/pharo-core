update30562
	"self new update30562"
	self withUpdateLog: '12128 Settings do not open due to MNU: SettingTree >> #helpText
	https://pharo.fogbugz.com/f/cases/12128
	
2486 Linux VM: Umlaute in file/directory names: UTF8 unicode problem?
	https://pharo.fogbugz.com/f/cases/2486
	
12115 Newly added Monticello Packages do not include the default repository group
	https://pharo.fogbugz.com/f/cases/12115'.
	self loadTogether: self script218 merge: false.
	MCPackage allInstances select: [ :e | e workingCopy repositoryGroup repositories size < 2 ] thenDo: [:e |  ((MCPackage named: 'Kernel') workingCopy repositoryGroup repositories) do: [:r | e workingCopy repositoryGroup addRepository: r ]].
.
	self flushCaches.
