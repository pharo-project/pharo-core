update50076
	"self new update50076"
	self withUpdateLog: '15627 menuShortcutModifierString needs to answer ctrl for windows and linux
	https://pharo.fogbugz.com/f/cases/15627

15598 Morphic - Cant go back directly to the first menu when more than 2 submenus are opened.
	https://pharo.fogbugz.com/f/cases/15598'.
	self loadTogether: self script50076 merge: false.
	self loadConfiguration: 'GlamourCore' version: '3.1.4'.self flushCaches.
