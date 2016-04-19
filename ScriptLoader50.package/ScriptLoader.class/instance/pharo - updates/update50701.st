update50701
	"self new update50701"
	self withUpdateLog: '16976 Invalid repo predefined in Monticello browser
	https://pharo.fogbugz.com/f/cases/16976

17965 Failing on CI: #testShouldFileLocatorBeBeforeSystemSettingsPersistenceInStartupList
	https://pharo.fogbugz.com/f/cases/17965'.
	self loadTogether: self script50701 merge: false.
	
[| wrongRepo |
wrongRepo := MCRepositoryGroup default repositories 
    detect: [ :repo |
        ((repo isKindOf: MCSmalltalkhubRepository)
        and: [ repo owner = 'Pharo' ])
        and: [ repo project = 'XMLWriter' ] ] 
    ifFound: [ :repo |
        MCRepositoryGroup default removeRepository: wrongRepo.]] value.
	self flushCaches.
