# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ListType.delete_all

ListType.create(
    name: 'Email',
    description: 'Email list type, for storing a list of emails',
    item_type: 'string'
)
ListType.create(
    name: 'Contact',
    description: 'Contact list type for storing a list of contacts',
    item_type: 'complex'
)
ListType.create(
    name: 'Grocery',
    description: 'Grocery list type for storing a list of groceries',
    item_type: 'string'
)
ListType.create(
    name: 'Todo',
    description: 'Todo list type for storing a list of todos',
    item_type: 'complex'
)
ListType.create(
    name: 'Favorites',
    description: 'Favorites list type for storing a list of favorites',
    item_type: 'string'
)
ListType.create(
    name: 'ProsCons',
    description: 'ProsCons list type for storing a list of pros and cons',
    item_type: 'complex'
)
