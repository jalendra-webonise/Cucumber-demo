require 'uri'
require 'cgi'



And /^I start the testing$/ do
  puts "started testing"
  DatabaseCleaner[:active_record, :connection => :test].start
  # DatabaseCleaner.start
end

And /^I stop testing$/ do
  # DatabaseCleaner.clean
  puts "cleaning"
  DatabaseCleaner[:active_record, :connection => :test].clean
end

# When /^I go to path "(.*?)"$/ do |arg1|
#   visit(arg1)
# end

Then /^I should see "(.*?)"$/ do |arg1|
  assert page.has_content?(arg1)
end

And /^I submit wrong credential in Login form$/ do
  fill_in('Email', :with => "abc@xyz.com")
  fill_in('Password', :with => 's3cr3t')
  click_button('Sign in')
end

When /^I follow "(.*?)"$/ do |arg1|
  click_link(arg1)
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I go to (.+)$/ do |arg1|
  visit path_to(arg1)
end

Given /^I have registered user with email "(.*?)" and password "(.*?)"$/ do |arg1, arg2|
  @user = User.new(email: arg1, password: arg2, password_confirmation: arg2)
  @user.save!
end



When /^I register user with email "(.*?)" and password "(.*?)"$/ do |arg1, arg2|
  fill_in('user_email', :with => arg1)
  fill_in('user_password', :with => arg2)
  fill_in('user_password_confirmation', :with => arg2)
  click_button('Sign up')
end

When /^I login with email "(.*?)" and password "(.*?)"$/ do |arg1, arg2|
  fill_in('user_email', :with => arg1)
  fill_in('user_password', :with => arg2)
  click_button('Sign in')
end

When /^I fill in the following:$/ do |table|
  puts table.hashes
end

# When /^(?:|I )fill in the following(?: within "([^"]*)")?:$/ do |selector, fields|
#   with_scope(selector) do
#     fields.rows_hash.each do |name, value|
#       When %{I fill in "#{name}" with "#{value}"}
#     end
#   end
# end