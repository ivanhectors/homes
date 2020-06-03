Feature: Register and login User

Scenario: [2.1] User able to register their account into the site using https:/homes.com.au/register
When user clicked Join button
Then user directed to Join Page
Then user enter first and last name, email, password and confirm password
Then user clicked signup button
Then user directed to landingpage

Scenario: [1.1] User able to login into the site using https://homes.com.au/login  
When user clicked Log in button
Then user directed to Login / Join Page
Then user enter the email and password
Then user clicked login button
Then user directed to landing page

Scenario: [1.2] User able to login into the site as an admin using https:/homes.com.au/login
When Admin go to Admin portal
Then Admin directed to Login Admin
Then Admin enter the email and password
Then Admin clicked login button
Then Admin directed to admin portal

Scenario: [1.3] User able to login into the site as an office admin using https:/homes.com.au/login
When Office Admin go to Admin portal
Then Office Admin directed to Login Page
Then Office Admin enter the email and password
Then Office Admin clicked login button
Then Office Admin directed to office admin portal

Scenario: [1.4] User able to login into the site as an agents using https:/homes.com.au/login
When Agents go to Admin portal
Then Agents directed to Login Page
Then Agents enter the email and password
Then Agents clicked login button
Then Agents directed to Agents portal