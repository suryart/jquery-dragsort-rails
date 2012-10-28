module JQuery
  module DragSort
    module Rails
      require 'jquery/dragsort/rails/engine' if defined?(Rails)
    end
  end
end
require 'jquery/dragsort/rails/dragsortlist' if defined?(Rails)
