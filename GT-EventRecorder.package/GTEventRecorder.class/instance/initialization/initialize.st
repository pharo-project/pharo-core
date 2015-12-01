initialize
	super initialize.
	collectors := GTEventCollectors new.
	delivery := GTEventDelivery new.
	delivery recorder: self.
	packing := GTEventPacking default.
	privacy := [ Privacy sendDiagnosticsAndUsageData ]