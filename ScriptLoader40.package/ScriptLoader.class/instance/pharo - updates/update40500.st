update40500
	"self new update40500"
	
SystemNavigation default obsoleteBehaviors do: [ :each | each propertyValueAt: #obsolete put: true ].
	self withUpdateLog: '14631 DNU GLMThemeIcons >> overlayModificationIconContents
	https://pharo.fogbugz.com/f/cases/14631

14941 isObsolete returns true for anonymous classes 
	https://pharo.fogbugz.com/f/cases/14941

14728 NBFFICalloutAPI option WinUnicode is not prefixed with opt, as all the other options
	https://pharo.fogbugz.com/f/cases/14728'.
	self loadTogether: self script500 merge: false.
	self flushCaches.
