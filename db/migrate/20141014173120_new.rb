class New < ActiveRecord::Migration
  def up
    add_column("users","username",:string, :limit=>25,:after=>"email")
    puts "*** adding new index here"
    add_index("users","username")
  end
  def down
    remove_index("users","username")
    remove_column("users","username")
end
end
