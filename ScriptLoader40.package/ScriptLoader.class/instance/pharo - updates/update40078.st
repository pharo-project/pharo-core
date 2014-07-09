update40078
	"self new update40078"
	self withUpdateLog: '13502 basic UserManager cleanup
	https://pharo.fogbugz.com/f/cases/13502

13520 remove all but one direct reference to Compiler
	https://pharo.fogbugz.com/f/cases/13520

'.
	self loadTogether: self script78 merge: false.
	PharoUser allInstances do: [ :user | user avatar: user defaultAvatar ].
	self flushCaches.
self cleanRepositories.
