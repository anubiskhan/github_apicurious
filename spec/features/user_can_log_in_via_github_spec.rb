require 'rails_helper'

describe 'User' do
  context 'visits the root' do
    it 'can log in to github' do
      visit '/'

      click_on 'Log in via GitHub'

      expect(current_path).to eq('https://github.com/login/oauth/authorize')
    end
  end
end
