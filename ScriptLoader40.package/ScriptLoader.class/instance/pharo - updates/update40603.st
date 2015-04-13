update40603
	"self new update40603"
	
{       { 'ConfigurationOfRubric'. 'AlainPlantec'. 'Rubric' }.
        { 'ConfigurationOfGlamourCore'. 'Moose'. 'Glamour' }.
        { 'ConfigurationOfGTInspectorCore'. 'Moose'. 'GToolkit' }.
        { 'ConfigurationOfGTPlaygroundCore'. 'Moose'. 'GToolkit' }.
        { 'ConfigurationOfGTSpotter'. 'Moose'. 'GToolkit' }.
} do: [ :spec |
        Gofer new
                smalltalkhubUser: spec second project: spec third;
                package: spec first;
                load ].
	self withUpdateLog: '15333 integrate spotter/inspector/playground
	https://pharo.fogbugz.com/f/cases/15333'.
	self loadTogether: self script603 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.0.1'.self flushCaches.
