border-styles
progressBarBorderStyleFor: aProgressBar 
	"Return the progress bar borderStyle for the given progress bar."
	^ BorderStyle simple width: 1;
		 baseColor: self settings progressBarColor darker 