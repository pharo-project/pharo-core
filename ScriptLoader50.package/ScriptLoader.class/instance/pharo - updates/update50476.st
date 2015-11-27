update50476
	"self new update50476"
	self withUpdateLog: '17151 MCWorkingCopyBrowser needs some love
	https://pharo.fogbugz.com/f/cases/17151

17154 Add a highlight to tempvar declarations when they are unused
	https://pharo.fogbugz.com/f/cases/17154

15543 Add a menu to add the Meta catalog of Pharo to MC
	https://pharo.fogbugz.com/f/cases/15543

17091 SpecDebugger has unused vars
	https://pharo.fogbugz.com/f/cases/17091'.
	self loadTogether: self script50476 merge: false.
	
MCRepositoryGroup default addRepository: 
    (MCSmalltalkhubRepository
        owner: 'Pharo'
        project: 'MetaRepoForPharo50'
        user: ''
        password: '').
	self flushCaches.
