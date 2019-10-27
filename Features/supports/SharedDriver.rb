require 'rubygems'
require 'rspec'
require 'watir-webdriver'
repuire 'selenium-webdriver'
require 'cucumber'


include Selenium
include RSpec::Expectations

browser = Watir::Browser.new

Before do
  @browser = browser
end