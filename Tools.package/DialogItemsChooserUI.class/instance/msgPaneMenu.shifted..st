private
msgPaneMenu: aMenu shifted: shifted
	^ aMenu labels: 
'find...(f)
find again (g)
set search string (h)
do again (j)
undo (z)
copy (c)
cut (x)
paste (v)
paste...
do it (d)
print it (p)
inspect it (i)
explore it (I)
debug it
accept (s)
cancel (l)
implementors (m)
methods containing (E)
senders (n)' 
		lines: #(0 3 5 9 14)
		selections: #(find findAgain setSearchString again undo copySelection cut paste pasteRecent doIt printIt inspectIt exploreIt debugIt accept cancel implementorsOfIt methodSourceContainingIt sendersOfIt)