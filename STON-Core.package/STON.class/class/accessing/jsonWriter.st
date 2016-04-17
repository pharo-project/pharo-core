jsonWriter
	^ STONWriter new
			jsonMode: true;
			referencePolicy: #error;
			yourself