private
postUpdate
	"Post update processing"
	
	"Flush caches"
	self flushCaches.
	"Remove metacello"
	Smalltalk globals 
		at: #ConfigurationOfMetacello
		ifPresent: [ :c | c unloadMetacello ].
	"Remove configurations"
	(self allManagers 
		select: [ :each | 'ConfigurationOf*' match: each packageName ])
		do: #unload.
	"Remove extra repositories"
	(MCRepositoryGroup default repositories 
		select: [ :each | '*metacello*' match: each description ])
		do: [ :each | MCRepositoryGroup default removeRepository: each ].
	"Rehash symbols"
	Symbol rehash.