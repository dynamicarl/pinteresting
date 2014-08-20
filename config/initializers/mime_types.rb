# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf

#This is a Win8/Paperclip 3.x issue; reports indicate it may not be needed in v. 4.0
module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end
