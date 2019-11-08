# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
JohnSmith = Student.create(first_name: 'John', last_name: 'Smith', email: 'jsmith@smith.com', 
    password_digest: 'password', age: 18, rank: '1')
    
JoeShmo = Student.create(first_name: 'Joe', last_name: 'Shmo', email: 'jshmo@shmo.com', 
    password_digest: 'password', age: 22, rank: '3')
    
JaneDoe = Student.create(first_name: 'Jane', last_name: 'Doe', email: 'jdoe@doe.com', 
    password_digest: 'password', age: 24, rank: '5')
    
BeginnerLesson = Lesson.create(title: 'Beginner Class', description: "The Beginner Class for all.")
    
IntermediateLesson = Lesson.create(title: 'Intermediate Class', description: "The Intermediate Class for the more advanced.")
    
AdvancedLesson = Lesson.create(title: 'Advanced Class', description: "The Advanced Class for the properly skilled.")