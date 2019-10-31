 # encoding: utf-8
    require 'win32/autogui'
    include Autogui::Input




    class Calculator < Autogui::Application

      include PageObject

          def initialize_app(options = {})
        # relative path to app using Windows style path
        @name ="exe\\Calculator.exe"   
        defaults = {
                     :title=> "Calculator -", 
                     :parameters => '--nosplash', 
                     :main_window_timeout => 20
                   }
        super defaults.merge(options)
      end



    end

