private
adjustResumptionTimeOldBase: oldBaseTime newBase: newBaseTime
	"Private! Adjust the value of the system's millisecond clock at which this Delay will be awoken. Used to adjust resumption times after a snapshot or clock roll-over."

	resumptionTime := newBaseTime + (resumptionTime - oldBaseTime).
