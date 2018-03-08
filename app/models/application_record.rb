require 'json'
require 'open-uri'

class ApplicationRecord < ActiveRecord::Base

  self.abstract_class = true

  SKILLS = %w(Java Python C Ruby Rails Javascript JQuery AngularJS Node.js React ReactNative PHP WordPress HTML CSS Objective-C Swift iOS Android Kotlin SQL .NET R Perl MATLAB Erlang Scala Bash Clojure Haskell Groovy DevOps Systems UI UX Apex SAS Crystal git GitHub Sales).sort

  VALUES = ["Remote", "30+ Days Parental Leave", "60+ Days Parental Leave", "90+ Days Parental Leave", "Flexible Hours", "Social Mission", "Environmental Mission", "401(k)", "401(k) Matching", "100\% Covered Health Insurance", "80\%+ Covered Health Insurance", "Dental Insurance", "Vision Insurance", "Life Insurance", "Trans-Inclusive Healthcare", "Professional Development Budget", "Unlimited Vacation", "30+ Days Vacation", "Lunch Provided", "Beach Within 60 Minutes", "Mountain Within 60 Minutes", "In-Office Gym", "Flat Heirarchy", "Commuter Coverage"].sort

  SALARIES = %w($60,000-$69,999 $70,000-$79,999 $80,000-$89,999 $90,000-$99,999 $100,000-$109,999 $110,000-$119,999 $120,000-$129,999 $130,000-$139,999 $140,000-$149,999 $150,000-$159,999 $160,000-$160,999 $170,000-$179,999 $180,000-$189,999 $190,000-$199,999, +$200,000)

  locations_serialized = open('db/locations.json').read
  LOCATIONS = JSON.parse(locations_serialized)
end

