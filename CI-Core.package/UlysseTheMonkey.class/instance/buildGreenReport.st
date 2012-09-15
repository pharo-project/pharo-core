printing
buildGreenReport

	^ String streamContents: [:stream | self buildGreenReportOn: stream ]