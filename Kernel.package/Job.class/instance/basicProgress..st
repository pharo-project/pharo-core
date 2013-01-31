private
basicProgress: aNormalizedFloat
	"Set the progress: 0.0 - 1.0 without triggering an update"
	currentValue := (min + ((max - min) * aNormalizedFloat))