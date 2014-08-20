2014-08-19 - 22:40
!! no backend storage configured; will fail to keep images, when pushed to host
+ new migration: 20140820015917_add_attachment_image_to_pins
~ gemfile: added new gem paperclip; had to side-load from github repo to work around compatibility issue
~ added image to Pin object; had to add validation to work around another compatibility issue
~ app/views/pins/_form.html.erb: added display code for images
~ app/controllers/pins_controller.rb: allowed editing of :image on Pin
~ app/views/pins/show.html.erb: displays the image below the description
~ app/views/pins/index.html.erb: shows (:medium) image in first column on table
~ config/initializers/mime_types.rb: added workaround for Win8/paperclip 3.x compatibility; bypasses spoof checks

2014-08-17 - 17:28
~ added association: :user has_many :pins; :pin belongs_to :user
~ pins/new, pins/create now use current_user.pins.build to instantiate objects, setting user_id field
~ added authentication mechanisms to pins_controller.rb - checks user_id/current_user on edit/destroy actions
~ updated pins/index to prompt for login before creating pins, hide functions not allowed to current user
~ updated home page: when logged in, primary button will take you to /pins list
~ pins/show - hides edit option unless pin belongs to current_user

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