module Railmail
  class Part
    attr_reader :raw, :body, :content_type, :encoding

    def initialize(attrs = {})
      @raw          = attrs
      @body         = attrs["@body"]
      @content_type = attrs["headers"]["Content-Type"]
      @encoding     = attrs["headers"]["transport_encoding"]
      @date         = attrs["headers"]["Date"]
    end
  end
end

