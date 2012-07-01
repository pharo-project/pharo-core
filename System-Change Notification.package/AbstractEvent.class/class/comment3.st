temporary
comment3

"Things to consider for trapping:
ClassOrganizer>>#changeFromCategorySpecs:
	Problem: I want to trap this to send the appropriate bunch of ReCategorization events, but ClassOrganizer instances do not know where they belong to (what class, or what system); it just uses symbols. So I cannot trigger the change, because not enough information is available. This is a conceptual problem: the organization is stand-alone implementation-wise, while conceptually it belongs to a class. The clean solution could be to reroute this message to a class, but this does not work for all of the senders (that would work from the browserm but not for the file-in).

Browser>>#categorizeAllUncategorizedMethods
	Problem: should be trapped to send a ReCategorization event. However, this is model code that should not be in the Browser. Clean solution is to move it out of there to the model, and then trap it there (or reroute it to one of the trapped places).

Note: Debugger>>#contents:notifying: recompiles methods when needed, so I trapped it to get updates. However, I need to find a way to write a unit test for this. Haven't gotten around yet for doing this though...
"