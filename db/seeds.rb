# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# cat = Category.create([{name: "Opéra"}, {name: "Théâtre"}])

# 10.times do 
#     rep = Repertoire.create(
#         title: 'Le mariage forcé',
#         composer: 'Lully',
#         role: 'Diable',
#         category: Category.find(1))
# end

10.times do 
    rep = Bio.create(title: 'Bio')
end