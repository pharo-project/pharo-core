update50364
	"self new update50364"
	self withUpdateLog: '16719 Extract Tick and Tabs from Polymorph
	https://pharo.fogbugz.com/f/cases/16719

16634 Rename layout to classLayout (step 2 use new accessors in the tests)
	https://pharo.fogbugz.com/f/cases/16634

16718 Added Help topic on importing resources in the Pharo image
	https://pharo.fogbugz.com/f/cases/16718'.
	self loadTogether: self script50364 merge: false.
	self flushCaches.
