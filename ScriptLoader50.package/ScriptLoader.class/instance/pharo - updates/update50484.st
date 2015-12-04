update50484
	"self new update50484"
	
{       { 'ConfigurationOfRubric'. 'Pharo'. 'Rubric' }.
        { 'ConfigurationOfGlamourCore'. 'Moose'. 'Glamour' }.
        { 'ConfigurationOfGTInspectorCore'. 'Moose'. 'GToolkit' }.
        { 'ConfigurationOfGTPlaygroundCore'. 'Moose'. 'GToolkit' }.
		  { 'ConfigurationOfGTEventRecorder'. 'Moose'. 'GToolkit' }.
        { 'ConfigurationOfGTSpotter'. 'Moose'. 'GToolkit' }.
} do: [ :spec |
        Gofer new
                smalltalkhubUser: spec second project: spec third;
                package: spec first;
                load ].
	self withUpdateLog: '17184 Update GTools version 3.2.2
	https://pharo.fogbugz.com/f/cases/17184'.
	self loadTogether: self script50484 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.2.2'.self flushCaches.
