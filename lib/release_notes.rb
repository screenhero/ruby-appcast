require 'RedCloth'

module Screenhero
  module Sparkle
    class ReleaseNotes
      def initialize(textile, style=nil)
        @body = RedCloth.new(textile).to_html

        if !style
          style = <<-EOF
            * { font-family: sans-serif;}
            h1 { font-family: sans-serif; background-color: #169cd8; padding: 10px; color: #ffffff;}
            h1 span { font-size: 75%; font-weight: normal; float: right;}
          EOF
        end

        @head = "<head><style>" + style + "</style></head>"
      end

      def to_s
        "<html>" + @head + @body + "</html>"
      end

      alias_method :to_html, :to_s
    end
  end
end
