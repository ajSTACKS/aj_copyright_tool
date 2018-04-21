module AjCopyrightTool
  class Renderer
    def self.copyright name, msg, color
      "&Copy; #{Time.now.year} | <b #{color}>#{name}</b> #{msg}".html_safe
    end
end
