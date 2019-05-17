# Flixter

A two-sided, video-streaming marketplace platform that features credit card payment capabilities, user role management, complex user interfaces, and advanced database relationships.
Functional project can be viewed on http://flixter-crystal-ng.herokuapp.com

## Setup
1. Clone the repository:
``` 
git clone https://github.com/oOCrystalOo/ruby-flixter.git
cd ruby-flixter
```
	
2. Install bundle, create a database, and run migration
``` 
bundle install
rake db:create
rake db:migrate
```

3. Set up an Amazon S3 storage
Set up a S3 bucket with Amazon Web Services. You will need to set up an IAM user with the `AmazonS3FullAccess` permissions. 
When launching your project, you will need to set the environment variables `AWS_ACCESS_KEY` and `AWS_SECRET_KEY`, which will be provided in the credentials.cvs that was downloaded when the IAM user was created.
You will also need to enter the enviroment variables `AWS_BUCKET` and `AWS_REGION`.

4. Set up with Stripe
Create an account on Stripe.com. Once your account's been created and you've signed in, navigate to Developers > API Keys in the menu on the left.
Set your `SECRET_KEY` and your `PUBLISHABLE_KEY` variables using the appropriate values.
Once you have it set up, you can test using the test credit card number `4242-4242-4242-4242`, with any date in the future as the expiration date, and any 3 digits as the CCV.
	
### Notes
This project uses postresql, and was created with ruby 2.5.3 and Rails 5.2.3.
Original project was deployed on Heroku.