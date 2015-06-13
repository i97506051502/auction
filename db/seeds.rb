# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Seller.create(
  name: "佐藤豪",
  prefecture: "東京都",
  tel: "012-345-6789"
)

Seller.create(
  name: "佐藤隆",
  prefecture: "長崎県",
  tel: "095-820-9988"
)
