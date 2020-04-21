When("I go to the create profile page") do
  visit "/profiles/new"
end

When("I see the create profile header") do
  expect(page).to have_content("New Profile");
end

When("I see the name header") do
  expect(page).to have_content("Name");
end

When("I see the email header") do
  expect(page).to have_content("Email");
end

When("I see the bio header") do
  expect(page).to have_content("Bio");
end

When("I see the interests header") do
  expect(page).to have_content("Interests");
end

When("I see the soundcloud header") do
  expect(page).to have_content("Soundcloud");
end

When("I see the youtube header") do
  expect(page).to have_content("Youtube");
end

Then("I see the spotify header") do
  expect(page).to have_content("Spotify");
end