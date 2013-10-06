resetAutoRefresh
	"autoRefresh is disabled when the inspector has no window, which is the case when the pre debugger is shown. Therefore, clicking on debug in the predebug window reset the autoRefresh process."

	self receiverInspector inspector resetAutoRefresh.
	self contextInspector resetAutoRefresh.