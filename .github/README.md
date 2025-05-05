<!-- markdownlint-disable MD033 MD041 -->
<div align="center">
  <img width="96" src="./assets/rubygems_logo.png" alt="RubyGems Logo">
</div>

<div align="center">
  <strong>jekyll-spoiler</strong>
</div>

<p align="center">
  <em>Jekyll support for spoilers</em>
</p>
<!-- markdownlint-enable MD033 MD041 -->

## Installation

Add one of these lines to your `Gemfile`:

```rb
# always use the latest version
gem 'jekyll-spoiler'

# use pessimistic lock
gem 'jekyll-spoiler', ~> '1.0'

# fetch gem from git
gem 'jekyll-spoiler', git: 'https://github.com/Strappazzon/jekyll-spoiler.git', tag: '1.0.0'
```

Then execute `bundle install` to install the Gem.

## Getting Started

Use this to add spoiler text:

```liquid
{{ "Lorem ipsum dolor sit amet." | spoiler }}
```

Use this to add collapsible spoiler text

```liquid
{% spoiler %}
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
{% endspoiler %}

{% spoiler title="Spoilers Ahead!" %}
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
{% endspoiler %}
```
