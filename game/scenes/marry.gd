extends Dialogue

func marry():
	start_event("marry")

	hide("sylvie")
	show("bg black")
	show("label", {"text":"And so, we become a visual novel creating duo"})
	step()

	hide("label")
	show("bg club")
	say(null, "Over the years, we make lots of games and have a lot of fun making them.")
	step()

	var book = Rakugo.store.get("book")
	if cond(book):
		say(null, "Our first game is based on one of Sylvie's ideas,"
		+ " but afterwards I get to come up with stories of my own, too."
		)
		step()

	say(null, "We take turns coming up with stories and"
		+" characters and support each other to make some great games!"
		)
	step()

	say(null, "And one day...")
	step()

	show("sylvie blue normal")
	say("s", "Hey...")
	step()

	say("m", "Yes?")
	step()

	show("show sylvie blue giggle")
	say("s", "Will you marry me?")
	step()

	say("m", "What? Where did this come from?")
	step()

	show("sylvie blue surprised")
	say("s", "Come on, how long have we been dating?")
	step()

	say("m", "A while...")
	step()

	show("sylvie blue smile")
	say("s", "These last few years we've been making visual novels together, spending time together, helping each other...")
	step()

	say("s", "I've gotten to know you and care about you better than anyone else. And I think the same goes for you, right?")
	step()

	say("m", "[s.name]")
	step()

	show("sylvie blue giggle")
	say("s", "But I know you're the indecisive type. If I held back, who knows when you'd propose?")
	step()

	show("sylvie blue normal")
	say("s", "So will you marry me?")
	step()

	say("m", "Of course I will! I've actually been meaning to propose, honest!")
	step()

	say("s", "I know, I know.")
	step()

	say("m", "I guess... I was too worried about timing. I wanted to ask the right question at the right time.")
	step()

	show("sylvie blue giggle")
	say("s", "You worry too much. If only this were a visual novel and I could pick an option to give you more courage!")
	step()

	say(null, "We get married shortly after that.")
	step()

	say(null, "Our visual novel duo lives on even after we're married...and I try my best to be more decisive.")
	step()

	say(null, "Together, we live happily ever after even now.") 
	step()

	show("bg black")
	show("label", {"text":"Good Ending"})
	step()

	Rakugo.reset_game()
	end_event()
