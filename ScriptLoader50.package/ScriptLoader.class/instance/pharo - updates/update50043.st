update50043
	"self new update50043"
	
{       { 'ConfigurationOfRubric'. 'Pharo'. 'Rubric' }.
        { 'ConfigurationOfGlamourCore'. 'Moose'. 'Glamour' }.
} do: [ :spec |
        Gofer new
                smalltalkhubUser: spec second project: spec third;
                package: spec first;
                load ].
	self withUpdateLog: '15520 use pushLiteralVariable: instead of pushLiteral: for reflective slot access
	https://pharo.fogbugz.com/f/cases/15520

15521 FreeType should not clean cache each time you save image
	https://pharo.fogbugz.com/f/cases/15521

15470 Replace Announcer>>#on:send:to:s senders in GTSpotter
	https://pharo.fogbugz.com/f/cases/15470'.
	self loadTogether: self script50043 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.2.4'.self flushCaches.
