class GithubService
  def initialize
    @token = ENV['SECRET_TOKEN_GITHUB']
  end

  def conn
    Faraday.new(url: "https://api.github.com", headers: { authorization: "token #{@token}" })
  end
end
