When("I go to the signup page") do
  visit "/signup"
end

And("I see the signup header") do
  expect(page).to have_content("Sign Up");
end

And("I see the username header") do
  expect(page).to have_content("Username");
end

Then("I see should see the password header") do
  expect(page).to have_content("Password");
end

