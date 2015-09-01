update50297
	"self new update50297"
	
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
	self withUpdateLog: '16447 Integrate GTools 3.0.6
	https://pharo.fogbugz.com/f/cases/16447'.
	self loadTogether: self script50297 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.0.6'.self flushCaches.
