context stack menu
stackActionMenu: aMenu
	
	^ aMenu
		labels: 'FullStack (f)
Restart (r)
Proceed (p)
Step (t)
Step through (T)
Send (e)
Where (w)
Peel to first like this
Return entered value
Toggle break on entry'
		lines: #(8 9)
		selections: #(#fullStack #restart #proceed #doStep #stepIntoBlock #send #where #peelToFirst #returnValue #toggleBreakOnEntry)
