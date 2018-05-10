class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :avatar_url
      t.string :username
      t.string :name
      t.string :oauth_token

      t.timestamps
    end
  end
end
