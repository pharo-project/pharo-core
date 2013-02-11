pharo - updates
update20534
	"self new update20534"
	self withUpdateLog: 'Issue 7463:	New feature uin Nautilus
	http://code.google.com/p/pharo/issues/detail?id=7463
	
Issue 7345:	DNU with Glamour: PaginatedMorphTreeMorph>>setSelectedMorph:
	http://code.google.com/p/pharo/issues/detail?id=7345
	
Issue 7469:	[ENH]: Enable most NEC Settings by default
	http://code.google.com/p/pharo/issues/detail?id=7469'.
	self loadTogether: self script511 merge: false.
		NECPreferences
			enabled: true;
			caseSensitive: true;
			expandPrefixes: true;
			useEnterToAccept: true;
			smartCharacters: true;
			smartCharactersWithDoubleSpace: '[]{}'; "if we prefer this style"
			popupAutomaticDelay: 100.
	self flushCaches.
