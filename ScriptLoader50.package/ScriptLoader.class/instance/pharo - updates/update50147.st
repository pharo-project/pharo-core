update50147
	"self new update50147"
	
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
	self withUpdateLog: '15880 Update GTools to 3.0.3
	https://pharo.fogbugz.com/f/cases/15880

15872 two tests failing in SugsMenuBuilderTest
	https://pharo.fogbugz.com/f/cases/15872'.
	self loadTogether: self script50147 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.0.3'.self flushCaches.
