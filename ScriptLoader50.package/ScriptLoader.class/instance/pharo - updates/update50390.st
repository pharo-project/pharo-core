update50390
	"self new update50390"
	
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
	self withUpdateLog: '16797 Integrate GTools 3.0.8 using a Postload
	https://pharo.fogbugz.com/f/cases/16797'.
	self loadTogether: self script50390 merge: false.
	
[ScriptLoader new loadConfiguration: 'GToolkitCore' version: '3.0.8'] on: Warning do: [:ex | ex resume:true].
	self flushCaches.
