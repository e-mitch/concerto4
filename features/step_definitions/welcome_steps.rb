When("I go to the home page") do
  visit "/"
end

Then("I should see the name of the site") do
  expect(page).to have_content("Concerto");
end

Then("I should see the site description") do
  expect(page).to have_content("Where musicians go to find collaborators");
end