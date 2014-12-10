getProcessorLink: aProcessor

	^ self processorLinksMap at: aProcessor ifAbsent: [ nil ]