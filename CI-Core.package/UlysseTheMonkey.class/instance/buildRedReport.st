printing
buildRedReport

	^ String streamContents: [:stream | self buildRedReportOn: stream ]