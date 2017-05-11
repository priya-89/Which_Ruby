class Browser
  attr_reader :driver

  def initialize(browser_name)
    @driver = start_browser(browser_name)
    delete_cookies
  end

  def delete_cookies
    @driver.manage.delete_all_cookies
  end

  def move_browser(x_position, y_position)
    x_position ? x_position : x_position = 0
    y_position ? y_position : y_position = 0

    @driver.manage.window.move_to(x_position, y_position)
  end

  def open_page(url)
    @driver.navigate.to(url)

    #TelePage.new(@driver)
  end

  def set_timeout(timeout)
    @driver.manage.timeouts.implicit_wait = timeout
  end

  def wait_til()

    @driver.manage.timeouts.implicit_wait = 4
    #wait = Selenium::WebDriver::Wait.new(:timeout => 10)
   # wait.until { driver.title.downcase.start_with? "All television" }


  end

  def set_window_size(screen_width, screen_height)
    screen_width   ? screen_width   : screen_width   = 1280
    screen_height  ? screen_height  : screen_height  = 1024

    @driver.manage.window.resize_to(screen_width, screen_height)
  end

  def start_browser(browser)
    case browser
    when 'firefox'
      driver = Selenium::WebDriver.for :firefox
    when 'chrome'
      driver = Selenium::WebDriver.for :chrome
    else
      driver = Selenium::WebDriver.for :chrome
    end


    def check_box(arg1)

      if arg1 == 17

        chkbox = wait.until {
            @driver.find_element(:xpath, "//label[contains(.,'17-22')]")
          chkbox if chkbox.displayed?

        }
        puts "17-22 check box exists"
        chkbox.click

       elsif arg1 == "24"
        @driver.find_element(:xpath, "//label[contains(.,'24-32')]").click
      elsif arg1 == "39"
        @driver.find_element(:xpath, "//label[contains(.,'39-46')]").click
      elsif arg1 == "47"
        @driver.find_element(:xpath, "//label[contains(.,'47-50')]").click
      elsif arg1 == "51"
        @driver.find_element(:xpath, "//label[contains(.,'51-55')]").click
      elsif arg1 == "60"
        @driver.find_element(:xpath, "//label[contains(.,'60-65')]").click
      elsif arg1 == '50'
        @driver.find_element(:xpath,"//span[contains(.,'50-inch')]").click

      else
        system.print("Cannot apply filter. Recheck the input")
      end

    end

    def click_on_ele(val)
      @driver.find_element(:xpath => val ).click
    end

    def drop_dwn(arg)
      drop_down_menu = @driver.find_element(:name, 'sortby')
      option = Selenium::WebDriver::Support::Select.new(drop_down_menu)
      option.select_by(:value, arg)


    end

    def text_input(location, text)
      input = wait.until {
        element = @driver.find_element(:xpath, location)
        element if element.displayed?
      }
      input.send_keys(text)
    end
    driver
  end
end