class UsersController < ApplicationController
  def show
    @followers = GithubUser.new(current_user.username).followers
    @following = GithubUser.new(current_user.username).following
    @stars = GithubUser.new(current_user.username).stars
    @repositories = GithubUser.new(current_user.username).repositories
    @organizations = GithubUser.new(current_user.username).organizations
    @feed = GithubUser.new(current_user.username).feed
  end
end
