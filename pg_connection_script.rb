require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'PG_HOSTNAME',
  post: 5432,
  username: 'PG_USERNAME',
  password: 'PG_PASSWORD'
)

#Create a quick migration
class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |table|
      table.string :name
      table.integer :age
      table.timestamps
    end
  end
end

# Create the table
CreateUserTable.migrate(:up)

#Create a User model
class User < ActiveRecord::Base
end

user = User.create(name: 'Babatunde Alli', age: 98)
