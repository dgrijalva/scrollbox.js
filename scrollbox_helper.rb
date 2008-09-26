module ActionView
  module Helpers
    module ScrollboxHelper

      def self.js_scrollbox id, opts = {}
        options = opts.map{|k,v| puts "#{k}, #{v}"} 
        "new ScrollBox($('#{id}'), {#{options}});"
      end

    end
  end
end

puts ActionView::Helpers::ScrollboxHelper::js_scrollbox('my_scrollbox', {:auto_hide => false})