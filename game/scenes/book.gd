extends Dialogue

func book():
	start_event("book")
	
	say("m", "It's like an interactive book that you can read on a computer or a console.")
	show("sylvie green surprised")
	step()
	
	say("s", "Interactive?")
	step()

	say("m", "You can make choices that lead to different events and endings in the story.")
	step()

	say("s", "So where does the {i}visual{/i} part come in?")
	step()

	say("m", "Visual novels have pictures and even music, "
		+"sound effects, and sometimes voice acting to go along with the text."
		)
	step()

	show("sylvie green smile")
	say("s", "I see! That certainly sounds like fun."
		+ " I actually used to make webcomics way back when,"
		+ " so I've got lots of story ideas."
		)
	step()

	say("m", "That's great! So...would you be interested in working with me as an artist?")
	step()

	say("s", "I'd love to!")
	step()

	get_node("../marry").start()
	end_event()
