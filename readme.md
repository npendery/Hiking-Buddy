# Boston area hiking app to find recommended trails to go on.

## To run locally do the following from the root directory:

```
cd frontend
npm install && bower install
rails server
..
cd backend
bundle install
rake db:create db:migrate db:seed
ember serve --proxy http://localhost:3000
```

Then go to ```localhost:4200``` and explore the fun trails available!


## ER Diagram
![ER Diagram](backend/app/assets/images/er-diagram.png)


## Future Updates

Create User model
Create Search model
