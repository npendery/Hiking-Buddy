# Hiking Buddy

## Boston area hiking app to find recommended trails to go on.
#### Built to practice using a Rails backend and Ember frontend

### To run locally, set up two command lines and do the following from the root directory:

Tab 1
```
cd frontend
npm install && bower install
ember serve --proxy http://localhost:3000
```
Tab 2
```
cd backend
bundle install
rake db:create db:migrate db:seed
rails server
```

Then go to ```localhost:4200/hikes``` and explore the fun trails available!


### ER Diagram
![ER Diagram](backend/app/assets/images/er-diagram.png)


### Future Updates

* √ Add Hike delete feature (for hikes that are no longer available)
* Create User model (for authorizing hike edit and delete features)
* Create Search model (for searching by area)
