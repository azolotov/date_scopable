## DateScopable

DateScopable provides convenient scopes for Rails ActiveRecord models:

	User.today
	User.yesterday
	User.on Date.parse("4/7/2011")
	User.last_7_days
	User.last_month
	User.in_month_year(12,1999)
	User.between(Date.parse("4/1/2011"), Date.parse("4/5/2011"))

## Usage
		
	# Gemfile
	gem "date_scopable"
	
	$ bundle install
	
	# In your models
	class User < ActiveRecord::Base
		include DateScopable
		
		# the rest of your model
	end
	
		
