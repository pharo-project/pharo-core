update50358
	"self new update50358"
	
{{ #ConfigurationOfGTInspectorCore. #Moose. #GToolkit }} do: [ :spec |
        Gofer new
                smalltalkhubUser: spec second project: spec third;
                package: spec first;
                load ].
	self withUpdateLog: '16685 remove ThemeIcons references in GTools
	https://pharo.fogbugz.com/f/cases/16685

16702 remove ThemeIcons references in GTInspector
	https://pharo.fogbugz.com/f/cases/16702

16701 remove ThemeIcons references in Catalog
	https://pharo.fogbugz.com/f/cases/16701

16700 remove ThemeIcons references in GTSpotter
	https://pharo.fogbugz.com/f/cases/16700'.
	self loadTogether: self script50358 merge: false.
	self loadConfiguration: 'GTPlaygroundCore' version: '2.1.10'.
self loadConfiguration: 'GTInspectorCore' version: '2.0.21'.
self loadConfiguration: 'Catalog' version: '0.9.1'.
self loadConfiguration: 'GTSpotter' version: '1.2.13'.self flushCaches.
