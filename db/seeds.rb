require 'faker'
require 'pry'

Favorite.destroy_all
User.destroy_all
Job.destroy_all
Application.destroy_all


puts "Drop it like it's Seed, drop it likes it's Seed.."


1000.times do |job|
  puts "creating job"
  job = Job.new(
    title: Faker::Job.title,
    company: Faker::Company.name,
    description: "Lorem ipsum dolor amet activated charcoal XOXO gentrify biodiesel street art succulents. Pug farm-to-table dreamcatcher, small batch helvetica affogato beard austin. Thundercats beard tacos ennui kombucha squid brunch hammock everyday carry swag echo park af occupy tumeric selfies. Plaid air plant bicycle rights celiac taxidermy succulents. Deep v kombucha gentrify schlitz. Godard mlkshk letterpress unicorn quinoa, adaptogen banjo meh lyft four loko woke mixtape tilde poke.
    Oh. You need a little dummy text for your mockup? How quaint.
    I bet you’re still using Bootstrap too…",
    location: Faker::Address.city,
  )
   job.save

  3.times do |i|
    job.salary_list.add(Job::SALARIES.sample)
    job.save
  end

  3.times do |i|
    job.skill_list.add(Job::SKILLS.sample+"#{rand(1..5)}")
    job.save
  end

  12.times do |i|
    job.value_list.add(Job::VALUES.sample)
    job.save
  end

  job.save!
end

10.times do |register|
  puts "generating Registration"
  Registration.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end

i= 1
10.times do |user|
  puts "creating user"
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    location: Faker::Address.city,
    resume_file_path: Faker::File.mime_type,
    registration_id: Registration.find(i).id
    )
  user.save
  5.times do |i|
    user.skill_list.add(User::SKILLS.sample+"#{rand(1..5)}")
    user.save
    user.value_list.add(User::VALUES.sample)
    user.save
    user.salary_list.add(User::SALARIES.sample)
    user.save
  end
  user.save_skills(user.skill_list)
  i += 1
  user.save!
end





