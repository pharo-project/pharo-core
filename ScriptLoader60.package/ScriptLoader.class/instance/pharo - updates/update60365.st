update60365
	"self new update60365"
	self withUpdateLog: '19624 Wrong deprecated message in ifEmpty:ifNotEmptyDo:
	https://pharo.fogbugz.com/f/cases/19624

19625 Catalog: loaded config should not be displayed with white icon
	https://pharo.fogbugz.com/f/cases/19625

19129 Deprecation: The method Object>>name called from ClassHierarchyTest>>#testSubclasses has been deprecated.
	https://pharo.fogbugz.com/f/cases/19129'.
	self loadTogether: self script60365 merge: false.
	
ThemeIcons loadDefault.
	self flushCaches.
