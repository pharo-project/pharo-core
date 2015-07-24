update50188
	"self new update50188"
	
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
	self withUpdateLog: '15945 Update GTools to 3.0.4
	https://pharo.fogbugz.com/f/cases/15945

14439 ShoutTests should be Shout-Tests
	https://pharo.fogbugz.com/f/cases/14439'.
	self loadTogether: self script50188 merge: false.
	
[ScriptLoader new loadConfiguration: 'GToolkitCore' version: '3.0.4'] on: Warning do: [:ex | ex resume:true].
	self flushCaches.
