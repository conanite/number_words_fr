# -*- coding: utf-8 -*-

require "number_words"
require "number_words_fr/version"
require "yaml"

module NumberWordsFr
  WORDS = YAML::load File.read File.expand_path("../words.yml", __FILE__)

  class Fr < NumberWords::Base
    THOUSANDS = ["", "mille", "million", "milliard"]

    def int_to_words int, options={}
      case int
      when 0; "zéro"
      else
        join_thousands THOUSANDS, split_by_thousands(int)
      end
    end

    def hundreds_to_words int
      h = int / 100
      t = int % 100
      if t == 0
        case h;
        when 0; "zéro";
        when 1; "cent";
        else "#{tens_to_words h} cents"
        end
      else
        case h;
        when 0; "#{tens_to_words t}";
        when 1; "cent #{tens_to_words t}";
        else "#{tens_to_words h} cent #{tens_to_words t}"
        end
      end
    end

    def tens_to_words i
      WORDS["numbers"]["initial"][i]
    end

    def join_thousands names, amounts
      working = amounts.zip(names)
      working.delete_if { |amount, name| amount == 0 }
      working = working.map { |amount, name|
        if amount == 1 && name == 'mille'
          [name]
        elsif amount > 1 && name != 'mille' && name != ''
          [hundreds_to_words(amount), "#{name}s"]
        else
          [hundreds_to_words(amount), name]
        end
      }
      working.reverse.flatten.join(' ')
    end
  end

  NumberWords.add_handler :fr, Fr.new
end
