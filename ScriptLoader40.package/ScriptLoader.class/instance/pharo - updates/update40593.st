update40593
	"self new update40593"
	
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
.
	self withUpdateLog: '15257 Integrate inspector/spotter/playground
	https://pharo.fogbugz.com/f/cases/15257'.
	self loadTogether: self script593 merge: false.
	self loadConfiguration: 'GToolkitCore' version: 'development'.
KMRepository reset.
	self flushCaches.
