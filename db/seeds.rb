# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
JohnSmith = User.create(first_name: 'John', last_name: 'Smith', email: 'jsmith@smith.com', 
    password_digest: 'password', age: 18, rank: "9th kup")
    
JoeShmo = User.create(first_name: 'Joe', last_name: 'Shmo', email: 'jshmo@shmo.com', 
    password_digest: 'password', age: 22, rank: "6th kup")
    
JaneDoe = User.create(first_name: 'Jane', last_name: 'Doe', email: 'jdoe@doe.com', 
    password_digest: 'password', age: 24, rank: "8th kup")

# Lessons

today_date = Time.now
formatted_date = (today_date.to_s).split

BeginnerLesson = Lesson.create(title: 'Beginner Class', description: "The Beginner Class for all.", date: formatted_date[0], start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 09:00:00")
BeginnerLesson.users = [JohnSmith, JaneDoe]

IntermediateLesson = Lesson.create(title: 'Intermediate Class', description: "The Intermediate Class for the more advanced.", date: formatted_date[0], start_time: "2000-01-01 09:00:00", end_time: "2000-01-01 10:00:00")
IntermediateLesson.users = [JoeShmo]

AdvancedLesson = Lesson.create(title: 'Advanced Class', description: "The Advanced Class for the properly skilled.", date: formatted_date[0], start_time: "2000-01-01 10:00:00", end_time: "2000-01-01 11:00:00")
AdvancedLesson.users = [JoeShmo]

ExtraLesson = Lesson.create(title: 'Extra Class', description: "The Extra Class for more fun.", date: "2019-12-09", start_time: "2000-01-01 10:00:00", end_time: "2000-01-01 01:00:00")

# Challenges
FirstWeeklyChallenge = Challenge.create(title: 'First Weekly Challenge', description: 'This is the First Weekly Challenge', 
                    stepOne: '100 kicks', stepTwo: '200 punches', stepThree: '1 hour partner training', stepFour: 'Run 3 miles')
FirstWeeklyChallenge.users = [JohnSmith]

FirstMonthlyChallenge = Challenge.create(title: 'Monthly Challenge', description: 'This is the Monthly Challenge', 
                        stepOne: 'Run 10 miles', stepTwo: '5 hours partner training', stepThree: 'Practice form 50 times', stepFour: 'Clean Dojang 2 times')

FirstMonthlyChallenge.users = [JaneDoe, JoeShmo]
