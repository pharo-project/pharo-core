update40609
	"self new update40609"
	Smalltalk allClasses do: [ :each | each class organization comment: nil; commentStamp: nil ].
	self withUpdateLog: '15341 remove download sources setting
	https://pharo.fogbugz.com/f/cases/15341

15342 Metaclasses should not have a source pointer
	https://pharo.fogbugz.com/f/cases/15342
'.
	self loadTogether: self script609 merge: false.
	[ | workspace window |
	
	workspace := Workspace openContents: '"
Pharo 4.0
=========

Welcome to Pharo, an immersive live programming environment.

You can learn pharo by highlighting the next line and selecting [Do it] from the context menu:"

PharoTutorial go.

"Pharo 4.0 already comes pre-loaded with a rich set of packages that you can use to explore the system and develop your own applications. However there is also a huge library of user contributed projects that you can also load using the ''Configurations Browser'' by executing:"

MetacelloConfigurationBrowser open.

"This browser is also accessible from the World | Tools menu (just click the desktop, select Tools, and then Configuration Browser).

You can find information about Pharo on http://www.pharo.org. 

Some useful starting points are:

- Joining us and getting help http://www.pharo.org/get-help
- Getting the Pharo By Example book (available as a free PDF): http://www.pharobyexample.org
- Browser the documentation http://www.pharo.org/documentation
- Reporting problems http://www.pharo.org/get-involved

About this release
---------------------------
There are more than 1600 issues treated in this release. 

Sumarized issues for 4.0:
=========================

New stuff
---------

- GTools (Playground, Inspector, Spotter)
- Slots model instance variables as first class enities and enable meta-programming on this level.
- ShoreLine reporter: submit information automatically when errors happen
- TxModel, a modern text model who works with Athens (Preview)
- OSWindow, a new way to handle windows and input events (Preview)
- Glamour, a mature declarative browser builder
- Dark theme

Updated stuff
-------------

- Zinc/Zodiac
- Fuel
- Versionner

And a lot more!
You can check a more detailed explanation here: 
https://github.com/pharo-project/pharo-changelogs/blob/master/Pharo40ChangeLogs.md"'
	label: 'Welcome to Pharo 4.0!'.
	
window := workspace dependents detect: [ :each | 
		(each isKindOf: SystemWindow) and: [ each label = 'Welcome to Pharo 4.0!' ] ].
	
window extent: 700@400.
window center: Display extent / 2  ] value.
	self flushCaches.
self cleanRepositories.
