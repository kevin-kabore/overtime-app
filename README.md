# Overtime App

## Key requirement: Application that documents that salaried employees did or did not get overtime each week

## Models
- Post -> data:date rationale:text
X User -> Devise
- AdminUser -> Single Table Inheritance

## Features
- Approval Workflow
- SMS sending w/ link to approval or overtime input
- Administrate Admin dashboard
- Email summary to managers for Approval
- Needs to be documented if employee did not log Overtime

## UI
- Bootstrap -> formatting

## Libraries
- Devise for User Auth
- Administrate gem
- Bootstrap
- Twilio
- Dotenv gem to protect credentials
- Rspec for all automated testing
- Capybara for integration testing (mimicing browser sessions to mimic login etc)
