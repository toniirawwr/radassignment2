# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "testing123", password: "Testing_123")

Item.create(type: "New", title: "First News Post Seed", websource: "", news_id: 1, user_id: 1)
Item.create(type: "New", title: "Second News Post Seed", websource: "", news_id: 2, user_id: 1)
Item.create(type: "Comment", content: "First Comment Post Seed", news_id: 1, user_id: 1)
Item.create(type: "Comment", content: "Second Comment Post Seed", news_id: 2, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 1", websource: "", news_id: 3, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 2", websource: "", news_id: 4, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 3", websource: "", news_id: 5, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 4", websource: "", news_id: 6, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 5", websource: "", news_id: 7, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 6", websource: "", news_id: 8, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 7", websource: "", news_id: 9, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 8", websource: "", news_id: 10, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 9", websource: "", news_id: 11, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 10", websource: "", news_id: 12, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 11", websource: "", news_id: 13, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 12", websource: "", news_id: 14, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 13", websource: "https://www.google.com.au/search?hl=en&authuser=0&tbm=isch&source=hp&biw=1407&bih=964&ei=M8D3Wpi1Bs388AWy1rz4Ag&q=puppies&oq=puppies&gs_l=img.3..0l10.1449.4250.0.4529.15.13.1.0.0.0.377.1494.0j2j2j2.6.0....0...1ac.1.64.img..8.7.1495.0..35i39k1j0i10k1.0.6HNHY0BN3DQ", news_id: 15, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 14", websource: "https://www.google.com.au/search?hl=en&authuser=0&tbm=isch&source=hp&biw=1407&bih=964&ei=M8D3Wpi1Bs388AWy1rz4Ag&q=puppies&oq=puppies&gs_l=img.3..0l10.1449.4250.0.4529.15.13.1.0.0.0.377.1494.0j2j2j2.6.0....0...1ac.1.64.img..8.7.1495.0..35i39k1j0i10k1.0.6HNHY0BN3DQ", news_id: 16, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 15", websource: "https://www.google.com.au/search?hl=en&authuser=0&tbm=isch&source=hp&biw=1407&bih=964&ei=M8D3Wpi1Bs388AWy1rz4Ag&q=puppies&oq=puppies&gs_l=img.3..0l10.1449.4250.0.4529.15.13.1.0.0.0.377.1494.0j2j2j2.6.0....0...1ac.1.64.img..8.7.1495.0..35i39k1j0i10k1.0.6HNHY0BN3DQ", news_id: 17, user_id: 1)
Item.create(type: "New", title: "Random Seed Data 16", websource: "https://www.google.com.au/search?hl=en&authuser=0&tbm=isch&source=hp&biw=1407&bih=964&ei=M8D3Wpi1Bs388AWy1rz4Ag&q=puppies&oq=puppies&gs_l=img.3..0l10.1449.4250.0.4529.15.13.1.0.0.0.377.1494.0j2j2j2.6.0....0...1ac.1.64.img..8.7.1495.0..35i39k1j0i10k1.0.6HNHY0BN3DQ", news_id: 18, user_id: 1)
Item.create(type: "Comment", content: "Random Seed Comment 1", news_id: 18, user_id: 1)
Item.create(type: "Comment", content: "Random Seed Comment 2", news_id: 18, user_id: 1)
Item.create(type: "Comment", content: "Random Seed Comment 3", news_id: 18, user_id: 1)