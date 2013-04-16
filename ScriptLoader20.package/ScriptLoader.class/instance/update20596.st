pharo - updates
update20596
	"self new update20596"
	self withUpdateLog: 'Prepared for production.'.
	self loadTogether: self script570 merge: false.
	ImageCleaner cleanUpForRelease.
(Process allInstances 
	select: [ :p |  | ctx |
	    ctx := p suspendedContext.
	    ctx notNil and: [ ctx method  ==  (Delay>>#wait)
	        and: [ ctx sender sender sender method selector == #secondsWhenClockTicks  ]
	     ] ])
	do: #terminate.
((Workspace 
	openContents: '"
Pharo 2.0
=======

Welcome to Pharo, a clean, innovative, free, and open-source Smalltalk-like environment.

Pharo 2.0 comes with a whole set of packages you can use to explore the system and develop your own applications. But maybe you need other stuff or feel more comfortable using a tool you already know. To easily load projects, you can open the Configurations Browser by executing:"

MetacelloConfigurationBrowser open.

"You can also open the World menu (just click the desktop) and go to Tools, then Configuration Browser.

You can find information about Pharo on http://www.pharo-project.org. In particular, you may be interested in:

- Joining us and getting help http://www.pharo-project.org/community
- Getting the Pharo By Example book (available as a free PDF): http://www.pharobyexample.org
- Watching the screencasts http://www.pharocasts.com
- Reporting problems http://www.pharo-project.org/community/issue-tracking
- Reading the forth coming book http://rmod.lille.inria.fr/pbe2
- Reading the Pharo vision document http://bit.ly/HNkEru

About this release
---------------------------
All in all, there were over 1600 issues treated in the issue tracker and 1350 improvements integrated into 2.0.

http://code.google.com/p/pharo/issues/list?can=1&q=Milestone%3D2.0+status%3AIntegrated

Read it again, yes 1350 is huge, take two minutes and have a look at the list of improvements! Now you got the feel of the effort. And this was a true community effort. It is possible because people worldwide helped! We want to deeply thank them.

We want to thank Inria for its constant support, in particular for the salary of Igor Stasenko and Esteban Lorenzano, and for the help in the infrastructure.

We have accomplished this huge task for a better system because we were together. Do not forget that we are working on a consortium to support our system:

- http://consortium.pharo.org (for companies and organizations)
- http://association.pharo.org (for individuals)

Our goal is to build a system so that we can make a living with our creativity and programming skills.

Read the Pharo vision document and join!

Thanks a lot for your participation, energy and fun.

The Pharo Team

Summarized issues for 2.0
==================

UI
---

- Spec
- Widget enhancements
- Layout improvements/cleanups
- Keybindings
- New icons (famfam)
- Growl style notifications
- Revamp progress bar

Developer tools
------------------------

- Nautilus browser
- Critics browser
- Improved version diff browsing
- Spotlight
- Revamp Code Completion and smart chars
- Interactive navigation using ctrl/cmd+click over classes/methods
- Shout themes
- Andreas profiler

Networking
-----------------

- Update Zinc
- Zodiac (SSL)

System
-----------

- System Announcer
- RPackage replacing PackageInfo
- Command line tools / Headless mode
- Native boost
- Update Ring metamodel
- Fuel serializer
- Freetype fonts

Kernel
----------

- DateAndTime refactoring
- Updated FileSystem and replaced FileDirectory

VM
--

- Latests cog builds
- SSLPlugin
- FilePlugin enhancements
- SocketPlugin fixes
- Included libraries: freetype2, cairo

Cleanups
-------------

- FileDirectory removed (replaced by FileSystem)
- SmartRefStream and ReferenceStream removed (replaced by Fuel)
- PackageInfo deprecated (replaced by RPackage)

Other
-------

- Zeroconf scripts
- Continuous Integration for every aspect of our release process.

Not all the changes are reported here, but this is to give you an impression, you can find better explanation here: https://code.google.com/p/pharo/wiki/ActionsInPharo20
"'
label: 'Welcome to Pharo 2.0'))
	containingWindow 
		bounds: ((130.0@141.0) corner: (820.0@590.0)).
	self flushCaches.
