update40587
	"self new update40587"
	
{       { 'ConfigurationOfRubric'. 'AlainPlantec'. 'Rubric' }.
        { 'ConfigurationOfGlamourCore'. 'Moose'. 'Glamour' }.
        { 'ConfigurationOfGTInspectorCore'. 'Moose'. 'GToolkit' }.
        { 'ConfigurationOfGTPlaygroundCore'. 'Moose'. 'GToolkit' }.
        { 'ConfigurationOfGTSpotter'. 'Moose'. 'GToolkit' }.
	{ 'ConfigurationOfGToolkitCore'. 'Moose'. 'GToolkit' }.
} do: [ :spec |
        Gofer new
                smalltalkhubUser: spec second project: spec third;
                package: spec first;
                load ].
RubFindReplaceService cleanUp.
	self withUpdateLog: '15236 Integrate inspector/playground/spotter
	https://pharo.fogbugz.com/f/cases/15236'.
	self loadTogether: self script587 merge: false.
	self loadConfiguration: 'GToolkitCore' version: 'development'.
KMRepository reset.
RubFindReplaceService cleanUp.
	self flushCaches.
