# Fluent::Plugin::TailAsis, a plugin for [Fluentd](http://fluentd.org)

TailInput exteded plugin for fluentd.
It assumes that this plug-in is used with "fluent-plugin-fail-alternative". 

## Installation

Add this line to your application's Gemfile:

    gem 'fluent-plugin-tail-asis'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-tail-asis

## Usage

Sample config

    <source>
      type tail_asis
      path /some/where/xxxx.log
      pos_file /some/where/xxxx.pos
      asis_key message
      tag test.log
    </source>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
