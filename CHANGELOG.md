2014-08-17 - 16:26
+ added scaffold: pins
~ pins/_form - all pins display a panel
~ updated views to include panel elements for: pins/new, pins/edit, pins/show
~ wrapped pins/index data into a table
+ pins/index: displays pin.id as the first column in the table
+ pins/show: displays pin.id as the header for the panel

2014-08-17 - 14:44
~ updated formatting for devise auth pages: new_reg, new_sessions, edit_registration
~ _footer - hid contents; overkill with devise
~ _header - added sign in, sign out, account settings links (context-sensitive)
~ _header - now hide the "Why?" link when logged in to save space

2014-08-17 - 13:57
!~ renamed migrate file to include .rb extension; previous migrate failed
- migrated db to include new model
- added sign-in code to main page
- changed flash display message tag to work with bootstrap better

2014-08-03 - 21:21
setting up authentication...
setting up devise
- new model 'user'



2014-08-03 - 18:56
first heroku push..
- adding pg, ruby_12factor gems
- added :production, :test, :development groups to gemfile
- ran bundle install
- app pushed at omr-dynamicarl-pinteresting
specify ruby version in gemfile


2014-08-03 - 18:43
adjusted layout of home.html.erb; added login button
adjusted color scheme a bit

2014-08-03 - 18:24
updated ui color scheme
moved footer out to _footer.html.erb; changed layout
New Page: /Why, added to navbar at the top

2014-08-03 - 13:47
Updated home page layout; added jumbotron, button, customized the nav bar
moved dynamicarl.com link to footer in application.html.erb
Changed layout to bootstrap version of nav bar
Bootstrap-sass added.