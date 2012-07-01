temporary
comment2

"HTTPSocket useProxyServerNamed: 'proxy.telenet.be' port: 8080
TestRunner open

--------------------
We propose two orthogonal groups to categorize each event:
(1) the 'change type':
	added, removed, modified, renamed
	+ the composite 'changed' (see below for an explanation)
(2) the 'item type':
	class, method, instance variable, pool variable, protocol, category
	+ the composite 'any' (see below for an explanation).
The list of supported events is the cross product of these two lists (see below for an explicit enumeration of the events).

Depending on the change type, certain information related to the change is always present (for adding, the new things that was added, for removals, what was removed, for renaming, the old and the new name, etc.).

Depending on the item type, information regarding the item is present (for a method, which class it belongs to). 

Certain events 'overlap', for example, a method rename triggers a class change. To capture this I impose a hierarchy on the 'item types' (just put some numbers to clearly show the idea. They don't need numbers, really. Items at a certain categories are included by items one category number higher):
level 1 category
level 2 class
level 3 instance variable, pool variable, protocol, method.

Changes propagate according to this tree: any 'added', 'removed' or 'renamed' change type in level X triggers a 'changed' change type in level X - 1. A 'modified' change type does not trigger anything special.
For example, a method additions triggers a class modification. This does not trigger a category modification.

Note that we added 'composite events': wildcards for the 'change type' ('any' - any system additions) and for the 'item type' ('Changed' - all changes related to classes), and one for 'any change systemwide' (systemChanged).

This result is this list of Events:

classAdded
classRemoved
classModified
classRenamed (?)
classChanged (composite)

methodAdded
methodRemoved
methodModified
methodRenamed (?)
methodChanged (composite)

instanceVariableAdded
instanceVariableRemoved
instanceVariableModified 
instanceVariableRenamed (?)
instanceVariableChanged (composite)

protocolAdded
protocolRemoved
protocolModified
protocolRenamed (?)
protocolChanged (composite)

poolVariableAdded
poolVariableRemoved
poolVariableModified
poolVariableRenamed (?)
poolChanged (composite)

categoryAdded
categoryRemoved
categoryModified
categeryRenamed (?)
categoryChanged (composite)

anyAdded (composite)
anyRemoved (composite)
anyModified (composite)
anyRenamed (composite)

anyChanged (composite)



To check: can we pass somehow the 'source' of the change (a browser, a file-in, something else) ? Maybe by checking the context, but should not be too expensive either... I found this useful in some of my tools, but it might be too advanced to have in general. Tools that need this can always write code to check it for them.  But is not always simple...


Utilities (for the recent methods) and ChangeSet are the two main clients at this moment.

Important: make it very explicit that the event is send synchronously (or asynchronously, would we take that route).


					category
						class
							comment
							protocol
								method
OR
				category
				Smalltalk
					class
						comment
						protocol
						method
??



						Smalltalk	category
								\	/
								class
							/	  |	\
						comment  |	protocol
								  |	/
								method

"