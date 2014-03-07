update30791
	"self new update30791"
	self withUpdateLog: '13043 losing menu title when building menus with spec
	https://pharo.fogbugz.com/f/cases/13043

12954 Workspace Undeclared variable change broken: missing TextMorphForEditView>>#setText:
	https://pharo.fogbugz.com/f/cases/12954

13049 Dragging and dropping a class to another package fails: #MNU receiver of includesCategory: is nil
	https://pharo.fogbugz.com/f/cases/13049

'.
	self loadTogether: self script444 merge: false.
	self flushCaches.
