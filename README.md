# Overview 

Find My Flock is a dream-job-landing engine created especially by and for underrepresented developers. This code repo was the MVP of the app, which was rebuilt for it's [current live version](https://www.findmyflock.com/).

# Technology and Stack
* [PostgreSQL 10.4](https://www.postgresql.org/docs/current/static/release-10-4.html)
* [ruby 2.4.4](https://www.ruby-lang.org/en/news/2018/03/28/ruby-2-4-4-released/)
* [rails 5.2](https://guides.rubyonrails.org/v5.2/)
* [npm](https://www.npmjs.com/get-npm)
* [node](https://nodejs.org/en/) (see .nvmrc for version)  
* [yarn](https://yarnpkg.com/en/docs/install) 

# Setup
1. bundle install - Install ruby dependencies.  
2. nvm use - Verify you are using the correct version of Node.  
3. yarn - Install javscript dependencies.  
4. Get the master.key file from another developer and add it to the config/ folder.  
5. bundle exec rails db:create db:migrate - Create Postgres database and migrate.  
6. bundle exec rails db:seed - Seed database.  
7. Run the development server and test suite to verify successful deployment. See wiki for QA walkthrough.  

# Development Server
* bundle exec rails server  
* View site at http://localhost:3000/  
* Use test accounts: dev@example.com, recruiter@example.com, and admin@findmyflock.com with password password  

# Development Process 

1. Select the top card on Trello for this sprint. Move the card to "In Progress" and assign yourself to it. If you have any questions about the story move it back to the Inbox and ask the product owner (Kate) about it.

    Example:

    `#123 Search for jobs in multiple cities, not just one`

2. Create a local branch in your development environment to work on the story. Start the branch name with the Github Issue number.

    Example: $ git fetch $ git branch 123-multi-city-search origin/master $ git checkout 123-multi-city-search

3. Implement your feature. 

    Follow the [Ruby Style Guide](https://github.com/rubocop-hq/ruby-style-guide). You can use rubocop to see style errors rubocop app/

4. Make sure your changes don't break anything else. Fix anything broken.

5. Commit and push your branch to GitHub using a graphical git utility such as GitX, Tower, or Github Desktop.

6. Create a pull request.

    Use master as the root branch.

    Merge `master` into branch and resolve conflicts as needed before PR review if it is not automatically mergeable without conflicts.

7. Ask someone to review your code. That person should pull the branch down and test it manually on their own computer before merging. 

8. Make any necessary changes.

    Address PR review comments. Any ignored comments should be discussed.

9. Repeat 7 and 8 as needed.

10. Request code merge from Kate. 


# Brand Standards #

Flock Brand Colors

* Lightest blue: #CDFDFF // 19.6% cyan, 0.8% magenta, 0% yellow and 0% black.
- ![#CDFDFF](https://placehold.it/15/CDFDFF/000000?text=+) `#CDFDFF`

* second lightest blue: #2BF3F8 // 82.7% cyan, 2% magenta, 0% yellow and 2.7% black.
- ![#2BF3F8](https://placehold.it/15/2BF3F8/000000?text=+) `#2BF3F8`

* Darker (main below) blue: #00BBD5 // 100% cyan, 12.2% magenta, 0% yellow and 16.5% black
- ![#00BBD5](https://placehold.it/15/00BBD5/000000?text=+) `#00BBD5`

* Darkest blue (the one in the logo): #0096A8 // 100% cyan, 10.7% magenta, 0% yellow and 34.1% black.
- ![#0096A8](https://placehold.it/15/0096A8/000000?text=+) `#0096A8`

* Orange: #FF6D00 // 0, 57.3, 100, 0
- ![#FF6D00](https://placehold.it/15/FF6D00/000000?text=+) `#FF6D00`

# Credits 

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

We also make extensive use of the [Acts As Taggable](https://github.com/mbleigh/acts-as-taggable-on) Ruby gem. 
