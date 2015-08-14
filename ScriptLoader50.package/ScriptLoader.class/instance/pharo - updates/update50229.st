update50229
	"self new update50229"
	
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
	self withUpdateLog: '15290 Remove UserManager
	https://pharo.fogbugz.com/f/cases/15290

16171 Update GTools to version 3.0.5
	https://pharo.fogbugz.com/f/cases/16171

16180 Enable nil to null coercion for more objects, improved code
	https://pharo.fogbugz.com/f/cases/16180'.
	self loadTogether: self script50229 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.0.5'.
ScriptLoader new unloadPackageNamed: 'UserManager-Core'.
ScriptLoader new unloadPackageNamed: 'UserManager-Tests'.
	self flushCaches.
