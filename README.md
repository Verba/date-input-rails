# DateInputRails

This gem does two things:

* Backports `ActionView::Helpers::FormHelper#date_field` and `ActionView::Helpers::FormTagHelper#date_field_tag`
  from [Rails 4](https://github.com/rails/rails/pull/5016).
* Provides a polyfill for browsers that don't support `<input type="date">` that uses jQuery UI's datepicker. From
  the point of view of your application, this polyfill will function exactly like `<input type="date">`, i.e. date
  parameters will always be submitted in YYYY-MM-DD form, regardless of the format displayed to the user.

## Usage

**Gemfile**:

```
gem "date-input-rails"
```

**View**:

```
<%= form_for(...) do |f| %>
  <%= f.date_field :date %>
<% end %>
```

or

```
<%= date_field_tag :date, Date.today %>
```

**application.js**:

```
//= require date-input-polyfill
```

In addition, you must provide a `modernizr` JavaScript asset, either by building one on http://modernizr.com/download/
(it must include the "Input Types" feature detect) and adding it to your `vendor/assets/javascripts` directory, or using
the [modernizr gem](https://github.com/josh/ruby-modernizr).

The jQuery UI datepicker asset will automatically be provided by [jquery-ui-rails](https://github.com/joliss/jquery-ui-rails).
You'll need to make sure you include jQuery UI stylesheet assets somehow.

## License

Copyright 2012 Verba Software
see MIT-LICENSE
