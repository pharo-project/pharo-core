update50327
	"self new update50327"
	self withUpdateLog: '16500 Remove senders of subscribe:send:to: in the image
	https://pharo.fogbugz.com/f/cases/16500

16564 Remove senders of Announcer>>#subscribe:send:to: in Tool-Workspace
	https://pharo.fogbugz.com/f/cases/16564

16562 Remove senders of Announcer>>#subscribe:send:to: in Tool-FileList
	https://pharo.fogbugz.com/f/cases/16562

16553 TabModel/TabModelManager are not setting owner:
	https://pharo.fogbugz.com/f/cases/16553'.
	self loadTogether: self script50327 merge: false.
	self flushCaches.
