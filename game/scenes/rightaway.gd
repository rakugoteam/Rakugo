extends Dialogue

const game = 1
const book = 2

func rightaway():
	start_event("rightaway")
	
	show("sylvie green smile")
	say("s", "Hi there! How was class?")
	step()

	say("m", "Good...")
	step()

	say(null, "I can't bring myself to admit that it all went in one ear and out the other.")
	step()

	say("m", "Are you going home now? Wanna walk back with me?")
	step()

	say("s", "Sure!")
	step()

	show("bg meadow")
	say(null, "After a short while, we reach the meadows just outside the neighborhood where we both live.")
	step()

	say(null, "It's a scenic view I've grown used to. Autumn is especially beautiful here.")
	step()

	say(null, "When we were children, we played in these meadows a lot, so they're full of memories.")
	step()

	say("m", "Hey... Umm...")
	step()

	show("sylvie green smile")
	say(null, "She turns to me and smiles. She looks so welcoming that I feel my nervousness melt away.")
	step()

	say(null, "I'll ask her...!")
	step()

	say("m", "Ummm... Will you...")
	step()

	say("m", "Will you be my artist for a visual novel?")
	step()

	show("sylvie green surprised")
	say(null, "Silence.")
	step()

	say(null, "She looks so shocked that I begin to fear the worst. But then...")
	step()

	show("sylvie green smile")
	say("s", "Sure, but what's a {i}visual novel?{/i}", {"typing":false})
	Rakugo.store.set("book", false)
	var choice = menu([
		["It's a videogame.", game, {}],
		["It's an interactive book.", book, {}]
	])

	# to make menu use safe for rollback
	if cond(choice == game):
		$game.start()

	elif cond(choice == book):
		Rakugo.store.set("book", true)
		$book.start()

	end_event()
