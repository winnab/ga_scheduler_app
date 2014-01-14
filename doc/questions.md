#Application
* how to make .active change with the page?

```
- if current_user
  logged in as #{current_user.name}, 
  = link_to 'Logout', logout_path, method: :delete
- else
  = link_to 'Log In', login_path
  or
  = link_to 'Sign Up', signup_path

```
