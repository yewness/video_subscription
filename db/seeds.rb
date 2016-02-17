# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "yew@gmail.com", password: "123456789", category_id: 1).add_role :admin
User.create(email: "mac@gmail.com", password: "123456789", category_id: 4)
User.create(email: "dev@gmail.com", password: "123456789", category_id: 7)

Video.create(link: "UTEvGeWg4fU", title: "Standard 1 Lesson 1 Whole Number", description: "Understanding whole numbers", category_id: 1)
Video.create(link: "q9TIcGULNtQ", title: "Standard 2 Lesson 10 Volume of Liquid", description: "Determine the volumen of the liquid", category_id: 2)
Video.create(link: "vroWQXnuNI0", title: "Standard 3 Lesson 8 Time", description: "What does time mean to you?", category_id: 3)
Video.create(link: "xXXiKvvgdwc", title: "Standard 4 Lesson 2 Fraction", description: "Fraction of a slice of cake!", category_id: 4)
Video.create(link: "j-z_hX_WCNE", title: "Standard 5 Lesson 3-6 Word Problems", description: "Mathematics is never complete without solving the problem!", category_id: 5)
Video.create(link: "XfRc_8uK8eg", title: "Standard 6 Lesson 11-1 Understanding Data Handling", description: "Handle the data well!", category_id: 6)
Video.create(link: "D8J_M5-ZSjc", title: "Form 1 Lesson 6-3 Addition and Subtraction of Integers", description: "Basic Addition and Subtraction", category_id: 7)
Video.create(link: "rFlVI3WROdU", title: "Form 2 Lesson 12-4 Surface Area", description: "Fundamental of Surface Area", category_id: 8)
Video.create(link: "7CcwO-H-wYI", title: "Form 3 Lesson 8-5 Volume of Composite Solids", description: "What is the volume of the solid?", category_id: 9)

Category.create(name: "Lower Primary (Standard 1)")
Category.create(name: "Lower Primary (Standard 2)")
Category.create(name: "Lower Primary (Standard 3)")
Category.create(name: "Upper Primary (Standard 4)")
Category.create(name: "Upper Primary (Standard 5)")
Category.create(name: "Upper Primary (Standard 6)")
Category.create(name: "Lower Secondary (Form 1)")
Category.create(name: "Lower Secondary (Form 2)")
Category.create(name: "Lower Secondary (Form 3)")