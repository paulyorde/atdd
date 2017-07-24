Given(/^I visit the platform registration system$/) do
    visit_page Survey
end

When(/^I submit my information$/) do
    on_page Survey do |page| 
        page.text = 'your name'
        page.language = 'Ruby'
        page.submit 
        page.ruby_knowledge = 'high'
        page.version 
        sleep 2
    end
end

Then(/^I get a big thanks$/) do
    on_page SurveyResult do |page|
    expect(page.response).to include 'Thank you' 
    end
end