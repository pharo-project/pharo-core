profileSourcesFileViewing
	"The big test to check that a TextArea is able to compose and ''quickly'' show
	 a big file content "

	"self profileSourcesFileViewing"

	self
		show: 'Wait a moment, the sources file is huge' translated
		while: [ 
			TimeProfiler
				spyAllOn: [ 
					(RubEditingArea new
						beWrapped;
						width: 600;
						updateTextWith: (FileStream readOnlyFileNamed: Smalltalk sourcesFile basename) contents) openInWorld ] ]