require 'cucumber'
require 'watir-webdriver'

include Selenium
include RSpec::Expectations

Given(/^I launch amazon link page$/) do
  @SignInPage = SignInPage.new(@browser)
  @SignInPage.visit
end

And(/^I click on signIn tab$/) do
  @SignInPage.clickSignInTab
end

And(/^I entered the email$/) do
  @SignInPage.enteredEmail("ifs14042@gmail.com")
end

And(/^I click continue button$/) do
  @SignInPage.clickContinueBtn
end

And(/^I entered the password$/) do
  @SignInPage.enteredPassword("rubutbut123456")
end

When(/^I click signIn button$/) do
  @SignInPage.clickSignInBtn
end

Then(/^I see the home page$/) do
  @SignInPage.VerifyHomePage
end
