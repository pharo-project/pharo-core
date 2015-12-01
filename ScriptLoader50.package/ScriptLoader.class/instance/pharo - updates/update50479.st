update50479
	"self new update50479"
	
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
	self withUpdateLog: '17060 Update GTools version 3.2.1
	https://pharo.fogbugz.com/f/cases/17060'.
	self loadTogether: self script50479 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.2.1'.self flushCaches.
