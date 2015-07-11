# Personal Portfolio version 0.0.2

Completed as an assignment at [Epicodus](http://www.epicodus.com), Portland, Oregon.

Made with Ruby on Rails.

### Admin Credentials
```
Username: admin
Email: admin@admin.com
Password: 11111111 (eight 1's)
```
### Heroku
[Take a look](https://nameless-inlet-8355.herokuapp.com/)

### Local Setup
*(requires Postgres)*

1. Clone Repo `$ git clone https://github.com/leroidejesa/rails-portfolio-v0.0.2.git`

2. Setup Gems `$ bundle install`

3. Create/Seed Database `$ rake db:setup`

4. Run PostgreSQL `$ postgres`

5. Run Server `$ rails s`

6. Visit `localhost:3000` in your web browser.

#### Known Bugs / Future Additions
* Site doesn't auto-scroll down past top section on several pages
* Text area in posts/comments doesn't yet allow formatting
* 'Forgot your password?' link doesn't really work. 
* Admin authentication is implemented manually -- would like to try a gem in the future.
* CSS needs to be refactored in Sass. Not DRY at all
<hr>
© 2015 Leroi Dejesa. All Rights Reserved. License: [MIT](http://opensource.org/licenses/MIT)
