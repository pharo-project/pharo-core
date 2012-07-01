query
copyTo: aContext
	"Copy self and my sender chain down to, but not including, aContext.  End of copied chain will have nil sender.  BlockContexts whose home is also copied will point to the copy.  However, blockContexts that are not on the stack but may be later will not have their home pointing in the new copied thread.  So an error will be raised if one of these tries to return directly to its home.  It is best to use BlockClosures instead.  They only hold a ContextTag, which will work for all copies of the original home context."

	^ self copyTo: aContext blocks: IdentityDictionary new