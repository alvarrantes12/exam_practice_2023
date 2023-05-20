class JokesService
	def build_joke
		response = HTTParty.get("https://v2.jokeapi.dev/joke/Programming?lang=es&blacklistFlags=nsfw,religious,political,racist,sexist,explicit&type=single")
        #binding.pry
        Joke.create(first_name: response["joke"])
	end
end