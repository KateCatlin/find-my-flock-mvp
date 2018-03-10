require 'faker'
require 'pry'
require 'json'
require 'open-uri'

Favorite.destroy_all
puts "Destroyed favorites"
Application.destroy_all
puts "Destroyed applications"
User.destroy_all
puts "Destroyed users"
Job.destroy_all
puts "Destroyed jobs"

puts "Drop it like it's Seed, drop it likes it's Seed.."


job = Job.new(
  title: "Cybersecurity Team Lead",
  company: "Mapping Startup",
  description: "Crush on cartography? Help build an open-source mapping tool that powers over 50,000 apps, processes data at a petabyte scale, and reaches a quarter billion people per month. This leadership role is specific to the security team, though you need not have security experience. You’ll bring your software background and strong communication skills to work daily, and inspire the team on security-related engineering projects spanning both software development and DevOps. "
  )
job.save!

job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("Cybersecurity5", "Mentorship4", "Node.js2")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching")
job.save!


job.location_list.add("Washington D.C. Metro Area", "Remote")
job.save!


job = Job.new(
  title: "Creative Prototype Engineer",
  company: "Mapping Startup",
  description: "Are you someone who's always thinking beyond what's perceived as possible? Help a B2B mapping startup play around with their API and SDKs and figure out new ways to use their product. Build demos and prototypes to inspire new customers and even the internal team."
  )
job.save!

job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("JavaScript4", "UI1")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching")
job.save!


job.location_list.add("Washington D.C. Metro Area", "Remote", "San Francisco Bay Area")
job.save!


job = Job.new(
  title: "Android Developer",
  company: "Mapping Startup",
  description: "Change the way people move around the world in a role with a mapping company whose tech is used in millions of devices. This team is looking for a number of native Android developers. Are you excited by bringing your Android chops to navigation-related apps, building out an SDK, or just shaping the future of mapping in mobile? This is the team for you!"
  )
job.save!

job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("Java3", "Android3")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching")
job.save!


job.location_list.add("Washington D.C. Metro Area", "Remote", "San Francisco Bay Area")
job.save!


job = Job.new(
  title: "iOS AR/VR Developer",
  company: "Mapping Startup",
  description: "Change the way people move around the world in a role with a mapping company whose tech is used in millions of devices. The iOS team gets to play many roles. You'll implement features, triage bug fixes, share info with the sales team, build tools for GPS tracking, squash bugs, implement mapping APIs and even work with the sales team to provide feedback to potential clients. Basically, you'll create a better experience for people to receive turn by turn directions while they drive, walk or bike. This role is particularly in building AR features into iOS apps! "
  )
job.save!

job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("iOS4", "AR1", "VR1")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching")
job.save!


job.location_list.add("Washington D.C. Metro Area", "Remote", "San Francisco Bay Area")
job.save!


job = Job.new(
  title: "iOS Navigation Developer",
  company: "Mapping Startup",
  description: "Change the way people move around the world in a role with a mapping company whose tech is used in millions of devices. The iOS team gets to play many roles. You'll implement features, triage bug fixes, share info with the sales team, build tools for GPS tracking, squash bugs, implement mapping APIs and even work with the sales team to provide feedback to potential clients. Basically, you'll create a better experience for people to receive turn by turn directions while they drive, walk or bike. This role is particularly in building AR features into iOS apps! "
  )
job.save!

job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("iOS4", "Swift1", "Objective-C1", "Mentorship1")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching")
job.save!


job.location_list.add("Washington D.C. Metro Area", "Remote", "San Francisco Bay Area")
job.save!


job = Job.new(
  title: "iOS  Developer",
  company: "Mapping Startup",
  description: "Change the way people move around the world in a role with a mapping company whose tech is used in millions of devices. The iOS team gets to play many roles. You'll implement features, triage bug fixes, share info with the sales team, build tools for GPS tracking, squash bugs, implement mapping APIs and even work with the sales team to provide feedback to potential clients. Basically, you'll create a better experience for people to receive turn by turn directions while they drive, walk or bike."
  )
job.save!

job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("iOS4", "Swift1", "Objective-C1", "Mentorship1")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching")
job.save!


job.location_list.add("Washington D.C. Metro Area", "Remote", "San Francisco Bay Area")
job.save!


job = Job.new(
  title: "Sales Engineer",
  company: "Mapping Startup",
  description: "Help a mapping API company move people through the world-- And their clients understand what this technology can empower. They're looking for an engineer who is great with code, but also likes people and creative demos. When potential new big enterprise clients come in, you'll help them 'get' how they can use this tech -- Whether they're mapping the spread of a disease or figuring out which parts of the farm need more water. You'll brainstorm how the customer could use this tech, build demos, provide training, and handle questions."
  )
job.save!

job.salary_list.add("$110,000-$119,999")
job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("Sales1", "JavaScript4", "Node.js1", "AWS1")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching")
job.save!


job.location_list.add("Washington D.C. Metro Area", "Remote", "San Francisco Bay Area")
job.save!


job = Job.new(
  title: "Engingineering Manager",
  company: "Mapping Startup",
  description: "Crush on cartography? Help build an open-source mapping tool that powers over 50,000 apps, processes data at a petabyte scale, and reaches a quarter billion people per month. As they grow and scale, they need more talented engineering managers to keep teams inspired and on-track. Teams looking include iOS, Cybersecurity, and the core software team. In some cases, management experience is not required so long as you have a strong technical background and bring some serious communications chops to the background."
  )
job.save!

job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("node.js1", "management4")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching")
job.save!


job.location_list.add("Washington D.C. Metro Area", "Remote", "San Francisco Bay Area")
job.save!

job = Job.new(
  title: "Full-stack Developer",
  company: "Non-Profit Making Voting Seamless",
  description: "We believe voting should fit the way we live. To that end, we build technology for both voters and election administrators that simplifies the process and ensures that no voter should ever have to miss an election. We pair program, collaborate with product managers, and make sure our efforts deliver value to voters. We rotate roles and projects on our team so that everyone gets a variety of experience and working relationships and can bring their unique strengths to as wide a swath of our work as possible."
  )
job.save!

job.salary_list.add("$80,000-$89,999")
job.salary_list.add("$90,000-$99,999")
job.salary_list.add("$100,000-$109,999")
job.salary_list.add("$110,000-$119,999")
job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.save!

job.skill_list.add("Clojure2")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance", "Remote", "30+ Days Parental Leave", "Flexible Hours", "401(k) Matching", "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Unlimited Vacation", "Beach Within 60 Minutes", "Mountain Within 60 Minutes", "Social Mission")
job.save!


job.location_list.add("Remote")
job.save!


job = Job.new(
  title: "Backend Engineer",
  company: "Blogging Platform",
  description: "This role is hard to describe because it can encompass a lot of different work! It involves taking products from concept to implementation, high-volume and high-concurrency programming, and tracking down complex bugs until they've been thoroughly squashed."
  )
job.save!

job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("PHP4", "Python2")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "Remote", "30+ Days Parental Leave", "Flexible Hours", "401(k) Matching", "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Unlimited Vacation", "Beach Within 60 Minutes", "Mountain Within 60 Minutes")
job.save!


job.location_list.add("Remote")
job.save!


job = Job.new(
  title: "Senior JavaScript Engineer",
  company: "Blogging Platform",
  description: "This full-remote team works from all over the world. Chat rooms, Slack, and an annual 7 day trip to somewhere exotic keep everyone together. The company can cherry-pick employees with all their perks, so they prioritize the most collaborative and communicative people in the world (bonus if you're good with .gifs)."
  )
job.save!

job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("JavaScript4", "Python2")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "Remote", "30+ Days Parental Leave", "Flexible Hours", "401(k) Matching", "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Unlimited Vacation", "Beach Within 60 Minutes", "Mountain Within 60 Minutes")
job.save!

job.location_list.add("Remote")
job.save!

job = Job.new(
  title: "Senior PHP Engineer",
  company: "Blogging Platform",
  description: "You'll be on the team helping VIP clients implement the product. You'll help them push the limits of this platform to achieve their goals. This could be during launch, making large architectural decisions, debugging complex problems, or building tools and plugins custom to their needs."
  )
job.save!

job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("PHP4", "Wordpress1")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "Remote", "30+ Days Parental Leave", "Flexible Hours", "401(k) Matching", "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Unlimited Vacation", "Beach Within 60 Minutes", "Mountain Within 60 Minutes")
job.save!

job.location_list.add("Remote")
job.save!


job = Job.new(
  title: "Wordpress Developer",
  company: "Blogging Platform",
  description: "Join a major global company creating technology used by billions-- and work from wherever you want. You'll be on the team helping VIP clients implement the product. You'll help them push the limits of this platform to achieve their goals. This could be during launch, making large architectural decisions, debugging complex problems, or building tools and plugins custom to their needs. You'll need advanced programming skills in PHP (or Python and willing to learn PHP), great communication skills, and the ability to work independently."
  )
job.save!

job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("PHP4", "Wordpress1")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "Remote", "30+ Days Parental Leave", "Flexible Hours", "401(k) Matching", "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Unlimited Vacation", "Beach Within 60 Minutes", "Mountain Within 60 Minutes")
job.save!

job.location_list.add("Remote")
job.save!


job = Job.new(
  title: "Senior Front End Engineer",
  company: "E-Commerce Company",
  description: "Lead the front end team at a hugely successful E-commerce startup. You’ll be coding-- this is definitely a developer position-- but also advocate for technical direction, mentor junior developers, and coordinate across other teams."
  )
job.save!

job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("JavaScript4", "Python2")
job.save!

job.value_list.add("401(k)", "100\%+ Covered Health Insurance", "80\%+ Covered Health Insurance", "60+ Days Parental Leave", "90+ Days Parental Leave", "30+ Days Parental Leave", "401(k) Matching", "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Lunch Provided", "Unlimited Vacation")
job.save!

job.location_list.add("New York", "Greater New York City Area")
job.save!


job = Job.new(
  title: "Senior Full Stack Developer",
  company: "FinTech Startup",
  description: "Build the next generation of FinTech software at a fast-paced, fun, and growth-oriented startup led by a female CEO."
  )
job.save!

job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("DevOps1", "Ruby5", "JavaScript2")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "30+ Days Parental Leave", "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget")
job.save!


job.location_list.add("Greater Denver Area")
job.save!


job = Job.new(
  title: "Backend Python Developer",
  company: "Machine Learning Startup",
  description: "Join a team redesigning how machines can learn, making it easier to apply machine learning to medium data through cloud-based machine learning software. You'll build backend systems and data pipelines for their product, collaborate others to define the product strategy and learn more about the machine learning sphere."
  )
job.save!

job.salary_list.add("$110,000-$119,999")
job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.save!

job.skill_list.add("Python5")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "30+ Days Parental Leave", "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget")
job.save!


job.location_list.add("Greater Boston Area")
job.save!


job = Job.new(
  title: "Python (Django) Web Developer",
  company: "FoodTech Startup",
  description: "Love how food brings people together? This company runs employee meal programs for hundreds of offices to help teams bond over lunch. Join a close-knit engineering team of 7 as a full-stack developer. You’ll work on small improvements and bug fixes with the occasional huge new feature. There’s also some DevOps work on tooling and deploy processes."
  )
job.save!

job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("DevOps1", "Ruby5", "JavaScript2")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "30+ Days Parental Leave", "Dental Insurance", "Vision Insurance", "Life Insurance")
job.save!

job.location_list.add("San Francisco Bay Area")
job.save!


job = Job.new(
  title: "Ruby Team Lead",
  company: "Web Dev Agency",
  description: "Take the lead on developing a proprietary product being created by a successful software agency! They’re helping make the world easier for small business owners."
  )
job.save!

job.salary_list.add("$110,000-$119,999")
job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("Ruby4", "Rails3")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "30+ Days Parental Leave", "Dental Insurance", "Vision Insurance", "Life Insurance")
job.save!


job.location_list.add("San Francisco Bay Area")
job.save!


job = Job.new(
  title: "Ruby on Rails Developer",
  company: "Clean Energy Startup",
  description: "Ready to be writing code for something that actually makes a difference in this world? Motivated by the changes to our climate and the challenges to our energy infrastructure? Want to be around others who are equally passionate? This TechStars alumni startup is transforming the energy industry by accelerating the proliferation of solar. They work specifically to make commercial solar an attractive investment to individual investors, large banks, and everything in between. The key to this is the automation that is made possible by software that streamlines the process of financing commercial solar projects. Join a small but growing startup as a backend Ruby engineer. You’ll be involved in a variety of functions, but working primarily on the technology reducing transaction costs and automating risk analysis. As they scale up the amount of solar infrastructure built through the platform, you’ll make sure the software can scale with it. "
  )
job.save!

job.salary_list.add("$110,000-$119,999")
job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.save!

job.skill_list.add("Ruby4", "Rails3")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "30+ Days Parental Leave", "Dental Insurance", "Vision Insurance", "Life Insurance", "Environmental Mission", "100\%+ Covered Health Insurance", "Equity", "Professional Development Budget")
job.save!


job.location_list.add("Greater Denver Area", "Remote")
job.save!



job = Job.new(
  title: "Java Instructor",
  company: "Coding Bootcamp",
  description: "Help bright, motivated folks launch new careers in tech and build cool stuff (specifically in Java)."
  )
job.save!

job.salary_list.add("$100,000-$109,999")
job.salary_list.add("$110,000-$119,999")
job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.save!

job.skill_list.add("Java3", "Mentorship2")
job.save!

job.value_list.add("401(k)", "80\%+ Covered Health Insurance", "30+ Days Parental Leave", "Dental Insurance", "Vision Insurance", "Life Insurance", "Social Mission")
job.save!


job.location_list.add("Greater Denver Area", "Remote")
job.save!


job = Job.new(
  title: "Backend Developer",
  company: "Global Education Nonprofit",
  description: "Join a global non-profit (and one of the most empathetic teams in tech) making education accessible to all. If you’re passionate about opportunities across borders, diversity and solving really complex problems, this is the team for you."
  )
job.save!

job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("Python4")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "60+ Days Parental Leave", "90+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching", "Social Mission", "Trans-Inclusive Healthcare", "Unlimited Vacation", "Lunch Provided")
job.save!


job.location_list.add("San Francisco Bay Area", "Remote")
job.save!


job = Job.new(
  title: "Android Developer",
  company: "Global Education Nonprofit",
  description: "You'll help learners build mastery regardless of where they are, and regardless of whether they are accessing KA on the browser, on Android, or on iOS. You’ll create new, impactful ways for teachers and students to use online learning in the classroom. You’ll work on the content creation and translation tools that we rely on to expand our library of world-class educational content and bring it to an international audience. You'll help build cutting-edge infrastructure to enable students of all backgrounds to succeed on high-stakes assessments like the SAT and LSAT. Ultimately, you'll be part of helping millions of learners around the world unlock their full potential."
  )
job.save!

job.salary_list.add("$120,000-$129,999")
job.salary_list.add("$130,000-$139,999")
job.salary_list.add("$140,000-$149,999")
job.salary_list.add("$150,000-$159,999")
job.salary_list.add("$160,000-$160,999")
job.salary_list.add("$170,000-$179,999")
job.save!

job.skill_list.add("Android4")
job.save!

job.value_list.add("Office Dogs", "Equity", "30+ Days Parental Leave", "60+ Days Parental Leave", "90+ Days Parental Leave", "401(k)", "80\%+ Covered Health Insurance", "100\%+ Covered Health Insurance" "Dental Insurance", "Vision Insurance", "Life Insurance", "Professional Development Budget", "Beach Within 60 Minutes", "401(k) Matching", "Social Mission", "Trans-Inclusive Healthcare", "Unlimited Vacation", "Lunch Provided")
job.save!


job.location_list.add("San Francisco Bay Area", "Remote")
job.save!

puts "Jobs made, hack away!"

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
