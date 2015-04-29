update50021
	"self new update50021"
	
{       { 'ConfigurationOfRubric'. 'Pharo'. 'Rubric' }.
        { 'ConfigurationOfGlamourCore'. 'Moose'. 'Glamour' }.
        { 'ConfigurationOfGTInspectorCore'. 'Moose'. 'GToolkit' }.
        { 'ConfigurationOfGTPlaygroundCore'. 'Moose'. 'GToolkit' }.
        { 'ConfigurationOfGTSpotter'. 'Moose'. 'GToolkit' }.
} do: [ :spec |
        Gofer new
                smalltalkhubUser: spec second project: spec third;
                package: spec first;
                load ].
	self withUpdateLog: '15441 Integrate gtools
	https://pharo.fogbugz.com/f/cases/15441'.
	self loadTogether: self script630 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.0.2'.self flushCaches.
