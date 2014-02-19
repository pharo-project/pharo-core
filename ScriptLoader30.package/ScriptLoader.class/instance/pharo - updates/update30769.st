update30769
	"self new update30769"
	self withUpdateLog: '12925 MorphTreeNodeModel speedup
	https://pharo.fogbugz.com/f/cases/12925

12923 DateAndTime gets into infinite loop when a time is missing
	https://pharo.fogbugz.com/f/cases/12923

12815 Class comments missing for Network package
	https://pharo.fogbugz.com/f/cases/12815

12927 Speed up Slider and ScrollBar by reusing submorphs
	https://pharo.fogbugz.com/f/cases/12927

12891 Inspector menu histroy back/forward shows "a KeyCombinationChoice" keyboard shortcut
	https://pharo.fogbugz.com/f/cases/12891

12929 Reduce default filtering overhead in TreeNautilus
	https://pharo.fogbugz.com/f/cases/12929

12922 Newly opened full Debugger has no selection set when opened directly
	https://pharo.fogbugz.com/f/cases/12922

12888 NoTitle menu title in inspector context menu
	https://pharo.fogbugz.com/f/cases/12888

'.
	self loadTogether: self script422 merge: false.
	self flushCaches.
