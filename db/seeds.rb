# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.create! email: 'imtinge@163.com', password: 'judeYang123.', password_confirmation: 'judeYang123.'
u.add_role :admin
u.add_role :super_admin

