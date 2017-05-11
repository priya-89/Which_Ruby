
Given(/^I navigate to Televisions webpage$/) do
 @browser.open_page("http://www.which.co.uk/reviews/televisions");
end


Then(/^I wait for the page load$/) do
  @browser.wait_til
end

Then(/^I assert the page as Which Television webpage$/) do



end

When(/^I sort byMost\-recentlytested$/) do

  @driver.drop_dwn("testing_date_desc")

end

Then(/^Page should populate with preferred items and I http:\/\/www\.which\.co\.uk\/reviews\/televisions each sorted page$/) do |arg1|

end

When(/^I sort byPrice\(lowtohigh\)$/) do

  @driver.drop_dwn("price_asc")

end

Then(/^Page should populate with preferred items and I http:\/\/www\.which\.co\.uk\/reviews\/televisions\?sortby=price_asc&page=(\d+) each sorted page$/) do |arg1|

end

When(/^I sort byPrice\(hightolow\)$/) do

  @driver.drop_dwn("price_desc")

end

Then(/^Page should populate with preferred items and I http:\/\/www\.which\.co\.uk\/reviews\/televisions\?sortby=price_desc&page=(\d+) each sorted page$/) do |arg1|

end

When(/^I sort byScreen size\(high to low\)$/) do

  @driver.drop_dwn("screen_size_desc")

end

Then(/^Page should populate with preferred items and I http:\/\/www\.which\.co\.uk\/reviews\/televisions\?sortby=screen_size_desc&page=(\d+) each sorted page$/) do |arg1|

end

When(/^I sort byMost\-recently launched$/) do

  @driver.drop_dwn("launch_date_desc")
end

Then(/^Page should populate with preferred items and I http:\/\/www\.which\.co\.uk\/reviews\/televisions\?sortby=launch_date_desc&page=(\d+) each sorted page$/) do |arg1|

end

When(/^I Filter by (\d+)\-(\d+)$/) do |arg1, arg2|

  @driver.check_box(17)
  @driver.check_box(24)
  @driver.check_box(39)
  @driver.check_box(47)
  @driver.check_box(51)
  @driver.check_box(60)


end
Then(/^Page should populate with preferred items and I  http:\/\/www\.which\.co\.uk\/reviews\/televisions\?search\[range\]\[screen_size\]\[Screen_size\]\[\]=(\d+)\-(\d+)&sortby=testing_date_desc&page=(\d+) each Filtered page$/) do |arg1, arg2, arg3|

end

Then(/^I click on the maxiumum page options available and i ensure i assert that i navigated to correct page$/) do

  @browser.click_on_ele("//a[contains(@aria-label,'Page 2')]")
  Thread.sleep(1000)

  @browser.click_on_ele("//a[contains(@aria-label,'Page 3')]")
  Thread.sleep(1000)

  @browser.click_on_ele("//a[contains(@aria-label,'Page 4')]")
  Thread.sleep(1000)

  @browser.click_on_ele("//a[contains(@aria-label,'Page 5')]")
  Thread.sleep(1000)

  @browser.click_on_ele("//a[contains(@aria-label,'Page 6')]")
  Thread.sleep(1000)

  @browser.click_on_ele("//a[contains(@aria-label,'Page 7')]")
  Thread.sleep(1000)


end

Then(/^I Filter by (\d+)\-inch$/) do |arg1|

  @driver.check_box(50)

end

Then(/^I assert the url(\d+) after applying filter$/) do |arg1|



end

Then(/^I clear the filters$/) do
  @browser.click_on_ele("//button[contains(.,'Clear all')]")
end

When(/^I search for televsions from search textbox$/) do

  @browser.click_on_ele("//a[@id='gn-search-menu-toggle-button']")

  @browser.text_input("//input[@class='gn-search-menu__input']","televisions")

  @browser.click_on_ele("xpath>//button[@class='gn-search-menu__button']")

end

Then(/^I should navigate to a television product list page$/) do


end


