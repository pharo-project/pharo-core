pharo - updates
update20587
	"self new update20587"
	self withUpdateLog: 'Issue 7655:	new default preferences
	https://code.google.com/p/pharo/issues/detail?id=7655	
		
Issue 7652:	Nautilus and Message browser windows do not get updated when in a window group
	https:Argument expected -> //code.google.com/p/pharo/issues/detail?id=7652
	
Issue 7654:	keybindings redirects command to alt in linux/win
	https://code.google.com/p/pharo/issues/detail?id=7654
	
Issue 7650:	''2012-07-26 16:38:48 +0200'' asDateAndTime fails
	https://code.google.com/p/pharo/issues/detail?id=7650
'.
	self loadTogether: self script561 merge: false.
	NECPreferences popupAutomaticDelay: 500.
TextEditorDialogWindow autoAccept: true.
Parser warningAllowed: true.
	self flushCaches.
