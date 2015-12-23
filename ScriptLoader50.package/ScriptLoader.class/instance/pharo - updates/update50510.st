update50510
	"self new update50510"
	self withUpdateLog: '17291 The ImportingResourceHelp has to be updated
	https://pharo.fogbugz.com/f/cases/17291

17255 Need of a GTInspector help
	https://pharo.fogbugz.com/f/cases/17255

17238 Clean Metacello-Platform package
	https://pharo.fogbugz.com/f/cases/17238
	
'.
	self loadTogether: self script50510 merge: false.
	(MCWorkingCopy allManagers detect: [ :each | each packageName = 'Metacello-Platform']) unload.

Gofer new 
	repository: (MCRepository fromUrl: 'github://pharo-project/pharo-metacello:pharo/repository');
	package: 'Metacello-Platform' constraint: [ :version | version branch = 'pharo30'];
	load.
(MCWorkingCopy allManagers detect: [ :each | each packageName = 'Metacello-Platform.pharo30']) unload.
Gofer new 
	repository: (MCRepository fromUrl: 'github://pharo-project/pharo-metacello:pharo/repository');
	package: 'Metacello-Platform' constraint: [ :version | version branch = 'pharo30'];
	load.
(MCWorkingCopy allManagers detect: [ :each | each packageName = 'Metacello-Platform.pharo30']) unload.
	self flushCaches.
self cleanRepositories.
