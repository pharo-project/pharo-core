update40415
	"self new update40415"
	self withUpdateLog: '14604 Revert to previous version  in method versions list doesnt work
	https://pharo.fogbugz.com/f/cases/14604

1610 Font browser button "Update" does load fonts but font list is not updated
	https://pharo.fogbugz.com/f/cases/1610'.
	self loadTogether: self script415 merge: false.
	self flushCaches.
