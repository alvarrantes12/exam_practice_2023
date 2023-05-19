class JokesServices
    def build_joke
      response = HTTParty.get("https://v2.jokeapi.dev/joke/Programming?lang=es&blacklistFlags=nsfw,religious,political,racist,sexist,explicit")
      results = response["results"]
     
      Joke.create(joke: response["joke"])
    end
end