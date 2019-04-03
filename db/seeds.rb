# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |i|
  User.create(name:"#{i} carla", last_name: 'fernandez',  email:"carla@gmail.com", phone: 314504138, subscribed: false, address:"cr 34 #434524", price: 22.4)
end


########## metodos que se invocan sobre la clase
#
# User.all
# User.first
# User.last
# User.find(3)
# User.find_by(name: "algo")
# User.where(name: "algo")

########## metodos que se invocan sobre el registro
# user = User.find(1)
# user.email
# user.save
# user.update(name: "otro name")
# user.destroy
