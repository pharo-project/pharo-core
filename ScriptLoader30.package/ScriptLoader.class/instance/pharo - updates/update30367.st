update30367
	"self new update30367"
	self withUpdateLog: '11502 Override Class >> #setName:
	https://pharo.fogbugz.com/f/cases/11502

10548 All system processes should have proper names
	https://pharo.fogbugz.com/f/cases/10548'.
	self loadTogether: self script159 merge: false.
	Smalltalk lowSpaceWatcherProcess         ifNotNil: [ :process | process name: 'Low Space Watcher' ].
WeakArray runningFinalizationProcess     ifNotNil: [ :process | process name: 'WeakArray Finalization Process' ].
Processor backgroundProcess              ifNotNil: [ :process | process name: 'Idle Process' ].
InputEventFetcher default fetcherProcess ifNotNil: [ :process | process name: 'Input Event Fetcher Process' ].
UIManager default uiProcess              ifNotNil: [ :process | process name: 'Morphic UI Process' ].
	self flushCaches.
