
Feature: As a user searching for best television
  I want to access which television page to the most
  So that I would find my favourite TV

  Background: Enter the Which Television Landing page

    Given I navigate to Televisions webpage
    Then  I wait for the page load
    And  I assert the page as Which Television webpage


  Scenario Outline:Sort by - All the options in the Dropdown

    When I sort by<preference>
    Then Page should populate with preferred items and I <assert> each sorted page

    Examples:

      |preference|assert|

      |Most-recentlytested|http://www.which.co.uk/reviews/televisions|

      |Price(lowtohigh)|http://www.which.co.uk/reviews/televisions?sortby=price_asc&page=1|

      |Price(hightolow)|http://www.which.co.uk/reviews/televisions?sortby=price_desc&page=1|

      |Screen size(high to low)|http://www.which.co.uk/reviews/televisions?sortby=screen_size_desc&page=1|

      |Most-recently launched|http://www.which.co.uk/reviews/televisions?sortby=launch_date_desc&page=1|


  Scenario Outline: Filter the page items by screensize

    When I Filter by <Screensize>
    Then Page should populate with preferred items and I  <assert> each Filtered page

    Examples:
      |Screensize|assert|
      |17-22|http://www.which.co.uk/reviews/televisions?search[range][screen_size][Screen_size][]=17-23&sortby=testing_date_desc&page=1|

      |24-32|http://www.which.co.uk/reviews/televisions?search[range][screen_size][Screen_size][]=24-33&sortby=testing_date_desc&page=1|

      |39-46|http://www.which.co.uk/reviews/televisions?search[range][screen_size][Screen_size][]=39-47&sortby=testing_date_desc&page=1|

      |47-50|http://www.which.co.uk/reviews/televisions?search[range][screen_size][Screen_size][]=47-51&sortby=testing_date_desc&page=1|

      |51-55|http://www.which.co.uk/reviews/televisions?search[range][screen_size][Screen_size][]=51-56&sortby=testing_date_desc&page=1|

      |60-65|http://www.which.co.uk/reviews/televisions?search[range][screen_size][Screen_size][]=60-66&sortby=testing_date_desc&page=1|


  Scenario: Pagination - Navigate through different pages with in Television

    Then I click on the maxiumum page options available and i ensure i assert that i navigated to correct page


  Scenario Outline: Clear All Link

    When I sort by<preference>
    When I Filter by <Screensize>
    Then I Filter by <popular screen size>
    Then  I assert the <page> after applying filter
    And   I clear the filters

    Examples:
      |preference              |Screensize|popular screen size|page|
      |Screen size(high to low)|47-50     |50-inch            |url1|



    Scenario:  Search for an item from Television page

      When I search for televsions from search textbox
      Then I should navigate to a television product list page





