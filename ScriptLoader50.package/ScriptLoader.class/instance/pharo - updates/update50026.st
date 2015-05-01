update50026
	"self new update50026"
	self withUpdateLog: '15164 Misleading error message for nonexisting Package (String>>asPackage)
	https://pharo.fogbugz.com/f/cases/15164

15373 forward port 15322 "Save As" does not properly save filenames with dots in them, like "one.two" or "one.two.image"
	https://pharo.fogbugz.com/f/cases/15373

15458 fix #mustBeBoolean handling for #or:
	https://pharo.fogbugz.com/f/cases/15458'.
	self loadTogether: self script635 merge: false.
	self flushCaches.
