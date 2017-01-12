# Monkey patch Net::HTTP to add support for REPORT requests

module Net
  class HTTP
    class Report < HTTPRequest
      METHOD = 'REPORT'.freeze
      REQUEST_HAS_BODY = true
      RESPONSE_HAS_BODY = true
    end
  end
end
