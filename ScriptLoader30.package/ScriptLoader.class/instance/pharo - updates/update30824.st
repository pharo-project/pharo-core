update30824
	"self new update30824"
	self withUpdateLog: '12776 Cancelling "Previous Contents" in a Workspace clears the current contents
	https://pharo.fogbugz.com/f/cases/12776

13171 When browsing a hierarchy, Nautilus changes the view unexpectedly
	https://pharo.fogbugz.com/f/cases/13171

13168 EyeInspector>>#refresh could use special handling for removing last selected element
	https://pharo.fogbugz.com/f/cases/13168

'.
	self loadTogether: self script477 merge: false.
	self flushCaches.
