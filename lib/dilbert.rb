require "dilbert/version"
require "dilbert/dilbert_service"

module Dilbert
  
  class Console
    
    def initialize(printer, dilbert_service)
      @printer = printer
      @dilbert_service = dilbert_service
    end

    def run(*args)
      @printer.puts @dilbert_service.fetch_latest
    end
    
  end
  
end
