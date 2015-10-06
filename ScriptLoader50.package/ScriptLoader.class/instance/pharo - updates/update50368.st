update50368
	"self new update50368"
	self withUpdateLog: '16651 remove old ThemeIcons structure
	https://pharo.fogbugz.com/f/cases/16651'.
	self loadTogether: self script50368 merge: false.
	
ThemeIcons new 
	name: 'idea11';
	loadIconsFromUrl;
	beCurrent.
	self flushCaches.
