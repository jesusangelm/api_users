# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


15.times do |i|
  User.create(
    status: "Active",
    name: "Usuario #{i}",
    gender: "Masculino",
    company: "Company #{i}",
    email: "usuario#{i}@company#{i}.com",
    phone: "000-00000#{i}",
    address: "Calle #{i} con avenida #{i + 10}"
  )
end
