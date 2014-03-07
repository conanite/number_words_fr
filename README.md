# NumberWordsFr

Provides :fr locale for number_words gem

## Installation

    gem 'number_words_fr'
    bundle

## Usage

    require 'number_words/core_ext'

    I18n.locale = :fr
    123.to_words  # => "cent vingt-trois"

If you don't want to monkey-patch Integer, you can do this instead:

    I18n.locale = :fr
    NumberWords.int_to_words 123  # => "cent vingt-trois"

## Contributing

1. Fork it ( http://github.com/<my-github-username>/number_words_fr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
