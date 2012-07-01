private
cannotReturn: result to: homeContext
	"The receiver tried to return result to homeContext that no longer exists."

	^ BlockCannotReturn new
		result: result;
		deadHome: homeContext;
		signal