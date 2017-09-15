class GiphyAdapter

    include HTTParty

    base_uri 'api.giphy.com'

    def initialize
      @api_key = ENV['SECRET_KEY']
    end
    def search(search_string)
      response = self.class.get("/v1/gifs/search",
        {query:
          {
            q: search_string,
            api_key: @api_key
            }
          })
      ap response["data"]
      response["data"].map { |result| result["images"]["fixed_height"]["url"]}
    end
end

