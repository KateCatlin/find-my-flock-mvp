require 'json'
require 'open-uri'

class ApplicationRecord < ActiveRecord::Base

  self.abstract_class = true

  SKILLS = %w(Go AR VR Cybersecurity Management Kubernetes Docker Architecture Mentorship AWS Java Python C Ruby Rails Javascript JQuery AngularJS Node.js React ReactNative PHP WordPress HTML CSS Objective-C Swift iOS Android Kotlin SQL .NET R Perl MATLAB Erlang Scala Bash Clojure Haskell Groovy DevOps Systems UI UX Apex SAS Crystal git GitHub Sales).sort

  VALUES = ["Office Dogs", "Equity", "Remote", "30+ Days Parental Leave", "60+ Days Parental Leave", "90+ Days Parental Leave", "Flexible Hours", "Social Mission", "Environmental Mission", "401(k)", "401(k) Matching", "100\% Covered Health Insurance", "80\%+ Covered Health Insurance", "Dental Insurance", "Vision Insurance", "Life Insurance", "Trans-Inclusive Healthcare", "Professional Development Budget", "Unlimited Vacation", "30+ Days Vacation", "Lunch Provided", "Beach Within 60 Minutes", "Mountain Within 60 Minutes", "In-Office Gym", "Flat Heirarchy", "Commuter Coverage"].sort

  locations_serialized = open('db/locations.json').read
  LOCATIONS = JSON.parse(locations_serialized)
end

