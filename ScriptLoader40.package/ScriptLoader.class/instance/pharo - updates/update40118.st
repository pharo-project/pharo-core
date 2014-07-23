update40118
	"self new update40118"
	self withUpdateLog: '13654 Pressing Enter in EyeInspector gives MNU: TextModel>>asText
	https://pharo.fogbugz.com/f/cases/13654

13653 Add Additional Basic Pharo help to the System Help browser
	https://pharo.fogbugz.com/f/cases/13653

13660 reduce references to StringHolder
	https://pharo.fogbugz.com/f/cases/13660

13655 System-Localization and Gettext have classes with identical names
	https://pharo.fogbugz.com/f/cases/13655

'.
	self loadTogether: self script118 merge: false.
	self flushCaches.
self cleanRepositories.
