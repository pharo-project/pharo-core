availableRepositories
	"Return the available repositories"
	
	AvailableRepositories ifNil: [ AvailableRepositories := self defaultAvailableRepositories ].
	^AvailableRepositories 