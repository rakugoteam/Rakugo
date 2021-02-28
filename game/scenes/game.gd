extends Dialogue

func game():
	start_event("game")

	say("m", "It's a kind of videogame you can play on your computer or a console.")
	step()

	say("m", "Visual novels tell a story with pictures and music.")
	step()

	say("m", "Sometimes, you also get to make choices that affect the outcome of the story.")
	step()

	say("s", "So it's like those choose-your-adventure books?")
	step()

	say("m", "Exactly! I've got lots of different ideas that I think would work.")
	step()

	say("m", "And I thought maybe you could help me...since I know how you like to draw.")
	step()

	show("sylvie green normal")
	say("s", "Well, sure! I can try. I just hope I don't disappoint you.")
	step()

	say("m", "You know you could never disappoint me, [s.name].")
	step()

	get_node("../marry").start()
	end_event()
