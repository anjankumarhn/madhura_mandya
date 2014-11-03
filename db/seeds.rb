# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = Admin.create(name:'Anjan Gowda', username:'admin_user',email:'admin_user@yopmail.com')
admin_user.generate_default_password
puts "Admin user '#{admin_user.name}' created" if admin_user.save

admin_user = Admin.create(name:'Darshan', username:'darshan',email:'darshan@yopmail.com')
admin_user.generate_default_password
puts "Admin user '#{admin_user.name}' created" if admin_user.save

admin_user = Admin.create(name:'Amareesh', username:'amareesh',email:'amareesh@yopmail.com')
admin_user.generate_default_password
puts "Admin user '#{admin_user.name}' created" if admin_user.save

Thaluk.destroy_all
Thaluk.create(name: "Mandya")
Thaluk.create(name: "Maddur")
Thaluk.create(name: "Malavalli")
Thaluk.create(name: "Srirangapattana")
Thaluk.create(name: "Pandavapura")
Thaluk.create(name: "Nagamangla")
Thaluk.create(name: "K.R.Pete")