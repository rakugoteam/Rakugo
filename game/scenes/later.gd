extends Dialogue


func later():
	start_event("later")
	hide("sylvie")

	say(null,
			"I can't get up the nerve to ask right now."
			+"{nl}With a gulp, I decide to ask her later."
		)
	step()

	say(null, "But I'm an indecisive person.")
	step()

	say(null, "I couldn't ask her that day and I end up never being able to ask her.")
	step()

	say(null, "I guess I'll never know the answer to my question now...")
	step()

	show("bg black")
	show("label", {"text":"Bad Ending"})
	step()
	
	Rakugo.reset_game()
	exit()
