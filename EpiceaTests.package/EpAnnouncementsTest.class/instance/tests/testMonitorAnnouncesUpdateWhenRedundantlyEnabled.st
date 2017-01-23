testMonitorAnnouncesUpdateWhenRedundantlyEnabled

	monitor enable.
	self assertMonitorAnnouncesUpdateWhen: [ monitor enable ].
