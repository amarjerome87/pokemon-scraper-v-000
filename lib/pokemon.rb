require 'pry'
class Pokemon

  attr_accessor :id, :name, :type, :db

def initialize(id:, name:, type:, db:)
  @id = id
  @name = name
  @type = type
  @db = db
end

def self.save(name, type, db)

    db.execute("INSERT INTO pokemon (name, type)
    VALUES (?,?)", name, type)
    #@id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
end

def self.find (id,db)
  #binding.pry
  data = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
<<<<<<< HEAD

=======
  #binding.pry
>>>>>>> 29b44a938d7211a6ca54f2231701a559145417ee
Pokemon.new(id: data[0][0], name: data[0][1], type: data[0][2], db: db)

end

end
