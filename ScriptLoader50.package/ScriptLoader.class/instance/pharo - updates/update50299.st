update50299
	"self new update50299"
	
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
	self withUpdateLog: '16464 Smart suggestion is broken
	https://pharo.fogbugz.com/f/cases/16464

16458 #instead for MethodNode
	https://pharo.fogbugz.com/f/cases/16458

16455 Spotter dying on not understanding #canUnderstand:
	https://pharo.fogbugz.com/f/cases/16455'.
	self loadTogether: self script50299 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.0.7'.self flushCaches.
