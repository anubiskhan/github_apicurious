class GithubUser
  def initialize(username)
    @github_service = GithubService.new
    @username = username
  end

  def followers
    followers = @github_service.conn.get("users/#{@username}/followers").body
    JSON.parse(followers).map do |f|
      f['login']
    end
  end

  def following
    following = @github_service.conn.get("users/#{@username}/following").body
    JSON.parse(following).map do |f|
      f['login']
    end
  end

  def stars
    stars = @github_service.conn.get("users/#{@username}/starred").body
    JSON.parse(stars).length
  end

  def repositories
    repositories = @github_service.conn.get("users/#{@username}/repos").body
    JSON.parse(repositories).map do |r|
      r['name']
    end
  end

  def organizations
    organizations = @github_service.conn.get("users/#{@username}/orgs").body
    JSON.parse(organizations)
  end

  def feed
    feed = @github_service.conn.get("/anubiskhan").body
    JSON.parse(feed)
  end
end
