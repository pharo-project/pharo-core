may be obsolete
openAsMorphIn: window rect: rect
	"Add a set of change sorter views to the given top view offset by the given amount. To create a single change sorter, call this once with an offset of 0@0. To create a dual change sorter, call it twice with offsets of 0@0 and 0.5@0."

	| csListHeight msgListHeight csMsgListHeight |
	contents := ''.
	csListHeight := 0.25.
	msgListHeight := 0.25.
	csMsgListHeight := csListHeight + msgListHeight.
	self addDependent: window.		"so it will get changed: #relabel"
	
"The method SystemWindow>>addMorph:fullFrame: checks scrollBarsOnRight, then adds the morph at the back if true, otherwise it is added in front. But flopout hScrollbars needs the crrentSelector pane to be behind the upper ones in the draw order. Hence the value of scrollBarsOnRight affects the order in which the lowerpanes are added."
	window theme settings scrollBarsOnRight ifFalse:
		[window addMorph: (PluggableListMorphByItem on: self
					list: #messageList
					selected: #currentSelector
					changeSelected: #currentSelector:
					menu: #messageMenu:shifted:
					keystroke: #messageListKey:from:)
			frame: (((0@csListHeight extent: 1@msgListHeight)
				scaleBy: rect extent) translateBy: rect origin)].

	window addMorph: ((PluggableListMorphByItem on: self
				list: #changeSetList
				selected: #changeSetName
				changeSelected: #showChangeSetNamed:
				menu: #changeSetMenu:shifted:
				keystroke: #changeSetListKey:from:)
			autoDeselect: false)
		frame: (((0@0 extent: 0.5@csListHeight)
			scaleBy: rect extent) translateBy: rect origin).

	window addMorph: (PluggableListMorphByItem on: self
				list: #classList
				selected: #currentClassName
				changeSelected: #currentClassName:
				menu: #classListMenu:shifted:
				keystroke: #classListKey:from:)
		frame: (((0.5@0 extent: 0.5@csListHeight)
			scaleBy: rect extent) translateBy: rect origin).

	window theme settings scrollBarsOnRight ifTrue:
		[window addMorph: (PluggableListMorphByItem on: self
					list: #messageList
					selected: #currentSelector
					changeSelected: #currentSelector:
					menu: #messageMenu:shifted:
					keystroke: #messageListKey:from:)
			frame: (((0@csListHeight extent: 1@msgListHeight)
				scaleBy: rect extent) translateBy: rect origin)].

	 self addLowerPanesTo: window
		at: (((0@csMsgListHeight corner: 1@1) scaleBy: rect extent) translateBy: rect origin)
		with: nil.
