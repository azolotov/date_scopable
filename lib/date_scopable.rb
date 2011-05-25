module DateScopable
  extend ActiveSupport::Concern
  
  included do
    ##
    # Date Scopes
    # 
    # returns all objects created on a specific day or
    # within a specific range of days
    # 
    #     User.today
    #     User.yesterday
    #     User.on Date.parse("4/7/2011")
    #     User.last_7_days
    #     User.last_month
    #     User.between(Date.parse("4/1/2011"), Date.parse("4/5/2011"))
    # 
    # Usage: Ensure that the path to this module is autoloadable in
    # config/application.rb
    # 
    #   config.autoload_paths += %W(#{Rails.root}/lib)
    # 
    # then, include it in your models
    #     
    #   class User < ActiveRecord::Base
    #     include DateScopable
    #     
    #     # ...
    #   end
 
    ##
    # Show all objects created today
    #
    scope :today, lambda {
      where("created_at > ?", Time.now.beginning_of_day)
    }

    ##
    # Show all objects created yesterday
    #
    scope :yesterday, lambda {
      where("created_at > ? AND created_at < ?", Date.yesterday.beginning_of_day, Date.yesterday.end_of_day)
    }
    
    ##
    # Show all objects created on a specific day
    #
    scope :on, lambda { |day|
      where("created_at > ? AND created_At < ?", day.beginning_of_day, day.end_of_day)
    }
    
    ##
    # Show all objects created in the last seven days
    #
    scope :last_7_days, lambda {
      where("created_at > ?", 1.week.ago.beginning_of_day)
    }

    ##
    # Show all objects created last month
    #
    scope :last_month, lambda {
      where("created_at > ?", 1.month.ago.beginning_of_day)
    }

    ##
    # show all objects created between two specific days
    #
    scope :between, lambda { |start, finish|
      where("created_at > ? AND created_at < ?", start.beginning_of_day, finish.end_of_day)
    }
  end
  
end
