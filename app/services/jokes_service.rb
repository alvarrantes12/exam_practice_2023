class JokesService
	def build_joke
		response = HTTParty.get("https://v2.jokeapi.dev/joke/Programming?lang=es&blacklistFlags=nsfw,religious,political,racist,sexist,explicit&type=single")
		joke = response["joke"]
		Joke.create(joke: joke)
	end
end