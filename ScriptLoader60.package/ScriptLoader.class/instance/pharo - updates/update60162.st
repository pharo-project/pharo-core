update60162
	"self new update60162"
	self withUpdateLog: '18836 Second cleaning of Spec-Polywidgets and adding test
	https://pharo.fogbugz.com/f/cases/18836

18845 Move MIMEHeaderValue from Mail to MIME package
	https://pharo.fogbugz.com/f/cases/18845

18749 QA v3.2.1
	https://pharo.fogbugz.com/f/cases/18749'.
	self loadTogether: self script60162 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.2.3'.
Author useAuthor: 'Postload' during: [
Object subclass: #ReNodeMatchRule
	instanceVariableNames: 'matchers'
	classVariableNames: ''
	package: 'Renraku-Rules-Rewrite'.
	
Object subclass: #ReNodeRewriteRule
	instanceVariableNames: 'matches'
	classVariableNames: ''
	package: 'Renraku-Rules-Rewrite'.
	
ReNodeBasedRule subclass: #ReNodeMatchRule
	instanceVariableNames: 'matchers'
	classVariableNames: ''
	package: 'Renraku-Rules-Rewrite'.
	
ReNodeBasedRule subclass: #ReNodeRewriteRule
	instanceVariableNames: 'matches'
	classVariableNames: ''
	package: 'Renraku-Rules-Rewrite'
].
	self flushCaches.
