# Authentication

By now you should be familiar with basic sinatra apps and creating simple websites.  This problem will give you a chance to demonstrate your proficiency with the web by writing code for controllers, authentication, views, and basic HTML forms with a little bit of CSS.

Authentication is a central concern of most web applications.  We're going to start by creating a simple app that does nothing more than authenticate a user.

If you get stuck **move on**.  There is no "penalty" for not getting done.

## Objectives

### User Model

You have an empty `User` model and a database with a `users` table.  Add validations to the `User` model which guarantee the following:

1. Every user has an email
2. Every user's email is unique
3. Every email looks like *@*.*
4. Every user has a password

**Bonus**: Force the user to confirm their password when signing up.

You should not store the user's password directly in the database.

### Sign Up, Log In, Log Out

If the user is logged in the homepage should display a list of the email addresses of all signed up users.  Otherwise, it should prompt them to sign up or log in.  We should be able to do three things:

1. Sign up as a new user
2. Log in as an existing user
3. Log out as an existing user

Users who haven't signed up shouldn't be able to see who has signed up.  Make sure you handle the error cases.  If a `User` validation fails on signup the user should be shown the signup form and prompted to fix their mistake.
