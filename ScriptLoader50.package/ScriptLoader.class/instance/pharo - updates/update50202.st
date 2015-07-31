update50202
	"self new update50202"
	self withUpdateLog: '16073 TextEditor initialization
	https://pharo.fogbugz.com/f/cases/16073

16071 Remove groups button and clean up a lot of useless tests related to it in Nautilus
	https://pharo.fogbugz.com/f/cases/16071

15517 Breakpoint AST suggestions should be not shown when the editor is dirty
	https://pharo.fogbugz.com/f/cases/15517'.
	self loadTogether: self script50202 merge: false.
	self flushCaches.
