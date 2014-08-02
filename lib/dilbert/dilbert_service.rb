module Dilbert
  class DilbertService
    def fetch_latest
      "http://www.dilbert.com#{curl_command.chomp}"
    end

    def curl_command
     `curl http://dilbert.com/fast | grep img | cut -d'"' -f2 | tail -n1`
    end
  end
end
