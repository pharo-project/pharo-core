update50105
	"self new update50105"
	self withUpdateLog: '15735 Start to move RPackage-SystemIntegration to into RPackage
	https://pharo.fogbugz.com/f/cases/15735

15744 CatalogBrowser moved to PharoExtras
	https://pharo.fogbugz.com/f/cases/15744

15742 Small clean up in ChangesBrowser
	https://pharo.fogbugz.com/f/cases/15742'.
	self loadTogether: self script50105 merge: false.
	self loadConfiguration: 'Catalog' version: '0.5'.self flushCaches.
