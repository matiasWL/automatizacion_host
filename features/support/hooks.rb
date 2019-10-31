# # encoding: utf-8

# Before do |scenario|
# 	delete_old_screenshots
# 	if ENV['PLATFORM']=='desktop'
# 		args = ['start-maximized','--log-level=3']
# 	    @browser = Watir::Browser.new :chrome, options: {args: args}
# 	elsif ENV['PLATFORM']=='android'
# 	  	android_setup
# 	end
# end

# After do |scenario|
#   if scenario.failed?
#     log_failure scenario
#     save_screenshot scenario
#   end
#   @browser.close
#   @driver.quit if ENV['PLATFORM']=='android'
#   sleep 5 # do not remove this sleep
# end

# private 

# def android_setup
# 	# The address and port of our Appium server
# 		server_url = 'http://localhost:4723/wd/hub/'
# 		# Hash with information selenium webdriver needs

# 		capabilities =
# 		{
# 			platformName: 'Android',
# 			# platformVersion: '5.0.1',
# 			platformVersion: '6.0',
# 			deviceName: 'Huawei P8 lite',
# 			browserName: 'Chrome',
# 			automationName: "UIAutomator",
# 			# automationName: "UiAutomator2",
# 			# newCommandTimeout: 180,
# 			autoGrantPermissions: true			
# 		}

# 		#Setup webdrivers to talk to Appium and mobile chrome and use implicit_waits to poll with long timeout to see if pages are loaded
# 		@driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => server_url)		

# 		# ruby_lib_core example
# 		@driver.manage.timeouts.implicit_wait = 60 # Ruby translates it to seconds

# 		@browser = Watir::Browser.new @driver

# 		# ********************


# 		# capabilities = {
# 		#     deviceName: 'Huawei P8 lite',
# 		#     browserName:	   'chrome',
# 		#     platformName:      :android,
# 		#     newCommandTimeout: 15000,
# 		# }
# 		# @browser = Appium::Driver.new(caps: capabilities).start_driver
# 		# @browser.get 'https://generadordni.es/#dni'
# end