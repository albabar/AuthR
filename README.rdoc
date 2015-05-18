#AuthR (Auth Hellp App based on Rails)

##Features
* User Registration
* Login
* oAuth with Twitter
* One time payment with Stripe
* Member only page

## Technologies Used
* Ruby
* Rails
* Stripe
* Twitter
* Capistrano
* Sqlite3

## How to Deploy
Hope you got NginX installed. Get Matching Ruby version with RVM or RBENV.
Deploy with **Capistrano** as usual.

For first time
```
cap production deploy:initial
```

For Later times
```cap production deploy```

Copy the `config/application/yml` file to production config dir with updated values.

Restart Puma
```cap production deploy:restart```