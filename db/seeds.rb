# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

choices = Choice.create([{ option_a: 'Eat chocolate ice cream', option_b: 'Eat vanilla ice cream'}, { option_a: 'Eat a biscuit with gravy', option_b: 'Eat a biscuit with jam'}, { option_a: 'Have a personal chef for life', option_b: 'Free food for life'}])
