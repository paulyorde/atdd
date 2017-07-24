
class Survey
        include PageObject

        page_url 'bit.ly/watir-webdriver-demo'

         text_field(:text, :id => 'entry_1000000')
         select_list(:language, :id => 'entry_1000001')
         button(:submit, :name => 'submit')
         radio_button(:ruby_knowledge, :id => 'entry.1000003')
         checkbox(:version, :id => 'group_1000004_1')
end

class SurveyResult
    include PageObject
    div(:response, :xpath => '//div[@class="ss-resp-message"]')
end
