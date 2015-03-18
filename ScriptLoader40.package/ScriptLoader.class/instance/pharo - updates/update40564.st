update40564
	"self new update40564"
	
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

Smalltalk removeFromStartUpList: GTSpotterEventRecorderSettings.
	self withUpdateLog: '15149 Integrate GTools
	https://pharo.fogbugz.com/f/cases/15149'.
	self loadTogether: self script564 merge: false.
	self loadConfiguration: 'GToolkitCore' version: 'development'.self flushCaches.
