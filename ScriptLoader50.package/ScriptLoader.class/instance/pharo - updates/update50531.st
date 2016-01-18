update50531
	"self new update50531"
	self withUpdateLog: '17393 prepare integration of session manager
	https://pharo.fogbugz.com/f/cases/17393

17383 Allow banning packages in Manifest
	https://pharo.fogbugz.com/f/cases/17383

17382 Add rules to check for a new rule design guidelines
	https://pharo.fogbugz.com/f/cases/17382

17411 AthensCairoCanvas lacks a nbcall to cairo_paint_with_alpha
	https://pharo.fogbugz.com/f/cases/17411'.
	self loadTogether: self script50531 merge: false.
	self flushCaches.
