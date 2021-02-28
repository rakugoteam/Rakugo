extends Label

func _show(tag, args):
	if args.has("text"):
		text = args["text"]
	show()

