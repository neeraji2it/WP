# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => "admin@gmail.com", :password => "123456789", :password_confirmation => "123456789", :confirmation_token => nil, :confirmed_at => Time.now)

@work = Category.create(:name => "Work")
@play = Category.create(:name => "Play")
@well = Category.create(:name => "Well-Being")
Category.create(:name => "Personal", :ancestry => @work.id)
Category.create(:name => "Team", :ancestry => @work.id)
Category.create(:name => "To do", :ancestry => @work.id)
Category.create(:name => "Literature",:ancestry => @play.id)
Category.create(:name => "Media",:ancestry => @play.id)
Category.create(:name => "Sports",:ancestry => @play.id)
Category.create(:name => "Education",:ancestry => @well.id)
Category.create(:name => "Fitness",:ancestry => @well.id)
Category.create(:name => "Nutrition",:ancestry => @well.id)