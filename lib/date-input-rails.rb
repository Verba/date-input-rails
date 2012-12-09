require 'rails/engine'

module DateInputRails
  class Engine < ::Rails::Engine
  end
end

# Backports `ActionView::Helpers::FormHelper#date_field` and
# `ActionView::Helpers::FormTagHelper#date_field_tag` from Rails 4.
# https://github.com/rails/rails/pull/5016

require 'action_view'

module ActionView
  module Helpers
    module FormHelper
      def date_field(object_name, method, options = {})
        InstanceTag.new(object_name, method, self, options.delete(:object)).to_input_field_tag("date", options)
      end unless instance_methods.include?(:date_field)
    end

    # http://blog.lrdesign.com/2011/04/extending-form_for-in-rails-3-with-your-own-methods/
    class FormBuilder
      def date_field(method, options = {})
        @template.date_field(@object_name, method, objectify_options(options))
      end unless instance_methods.include?(:date_field)
    end

    module FormTagHelper
      def date_field_tag(name, value = nil, options = {})
        text_field_tag(name, value, options.stringify_keys.update("type" => "date"))
      end unless instance_methods.include?(:date_field_tag)
    end
  end
end
