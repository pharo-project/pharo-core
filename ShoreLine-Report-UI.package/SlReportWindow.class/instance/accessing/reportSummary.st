reportSummary

	^ 'Author: {1}
Date: {2}

{3}' format: { report author. report date. (Character cr join: report payload) }.