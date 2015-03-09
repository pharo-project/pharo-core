update40544
	"self new update40544"
	
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
	self withUpdateLog: '15018 Integrate GT tools with event recoder in spotter
	https://pharo.fogbugz.com/f/cases/15018'.
	self loadTogether: self script544 merge: false.
	self loadConfiguration: 'GToolkitCore' version: 'development'.self flushCaches.
