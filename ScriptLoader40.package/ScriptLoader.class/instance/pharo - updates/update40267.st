update40267
	"self new update40267"
	self withUpdateLog: '14090 use Announcer>>#when:do: in packages Announcements
	https://pharo.fogbugz.com/f/cases/14090

14103 Use Announcer>>#when:send:to: in Spec-Inspector.
	https://pharo.fogbugz.com/f/cases/14103

14087 use Announcer>>#when:send:to in packages Announcements 
	https://pharo.fogbugz.com/f/cases/14087

14095 use Announcer>>#when:send:do: and Announcer>>#when:do: in AnnouncementsTutorial
	https://pharo.fogbugz.com/f/cases/14095'.
	self loadTogether: self script267 merge: false.
	self flushCaches.
