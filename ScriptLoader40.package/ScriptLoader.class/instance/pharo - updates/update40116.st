update40116
	"self new update40116"
	self withUpdateLog: '13648 remove VTermInputDriver
	https://pharo.fogbugz.com/f/cases/13648

13651 move font related methods in BitBlt to Graphics-Fonts package
	https://pharo.fogbugz.com/f/cases/13651

13649 move ThreadSafeTranscript >> #codePaneMenu:shifted: to Tool-Transcript package
	https://pharo.fogbugz.com/f/cases/13649

13647 unimplemented #poolDictionaries called by Class, TClass and Trait
	https://pharo.fogbugz.com/f/cases/13647

13652 move class side ThreadSafeTranscript examples, menuCommandOn: and open to Tool-Transcript package
	https://pharo.fogbugz.com/f/cases/13652

'.
	self loadTogether: self script116 merge: false.
	self flushCaches.
self cleanRepositories.
