# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "yew@gmail.com", password: "123456789", level: 1)
User.create(email: "mac@gmail.com", password: "123456789", level: 2)
User.create(email: "dev@gmail.com", password: "123456789", level: 3)

Video.create(link: "SASKwGrusaU", title: "Standard 1 Lesson 1-1", description: "Understanding whole numbers", category_id: 1)
Video.create(link: "j5PwuW6TH2q4", title: "Standard 5 Lesson 1-3", description: "Addition with the highest total of 1000000", category_id: 2)
Video.create(link: "lUIp6-m_zVM", title: "Standard 1 Lesson 1-4", description: "Subtraction within the range of 1000000", , category_id: 2)
Video.create(link: "yfRXSpMXyBo", title: "Standard 5 Lesson 1-5", description: "Multiplication with the highest product of 1000000", category_id: 2)
Video.create(link: "jntaHfDPYvQ", title: "Standard 5 Lesson 1-6", description: "Division with the highest dividend of 1000000", category_id: 2)

Category.create(name: "Lower Primary (Std 1,2,3)")
Category.create(name: "Upper Primary (Std 4,5,6)")
Category.create(name: "Lower Secondary (Form 1,2,3)")
Category.create(name: "Upper Secondary (Form 4,5)")