# -*- coding: utf-8 -*-

require 'spec_helper'
require 'i18n'
require 'number_words_fr'
require 'number_words/core_ext'


describe NumberWordsFr do
  def expect_words n, txt
    expect(n.to_words).to eq txt
  end

  before { I18n.locale = :fr }

  it "should translate numbers into french" do
    expect_words 0, "zéro"
    expect_words 1, "un"
    expect_words 2, "deux"
    expect_words 10, "dix"
    expect_words 12, "douze"
    expect_words 18, "dix-huit"
    expect_words 20, "vingt"
    expect_words 21, "vingt et un"
    expect_words 22, "vingt-deux"
    expect_words 31, "trente et un"
    expect_words 33, "trente-trois"
    expect_words 44, "quarante-quatre"
    expect_words 55, "cinquante-cinq"
    expect_words 66, "soixante-six"
    expect_words 70, "soixante-dix"
    expect_words 71, "soixante et onze"
    expect_words 72, "soixante-douze"
    expect_words 73, "soixante-treize"
    expect_words 79, "soixante-dix-neuf"
    expect_words 80, "quatre-vingts"
    expect_words 81, "quatre-vingt-un"
    expect_words 82, "quatre-vingt-deux"
    expect_words 83, "quatre-vingt-trois"
    expect_words 89, "quatre-vingt-neuf"
    expect_words 90, "quatre-vingt-dix"
    expect_words 91, "quatre-vingt-onze"
    expect_words 92, "quatre-vingt-douze"
    expect_words 99, "quatre-vingt-dix-neuf"
    expect_words 100, "cent"
    expect_words 101, "cent un"
    expect_words 110, "cent dix"
    expect_words 111, "cent onze"
    expect_words 119, "cent dix-neuf"
    expect_words 120, "cent vingt"
    expect_words 185, "cent quatre-vingt-cinq"
    expect_words 300, "trois cents"
    expect_words 301, "trois cent un"
    expect_words 999, "neuf cent quatre-vingt-dix-neuf"
    expect_words 1000, "mille"
    expect_words 1001, "mille un"
    expect_words 1002, "mille deux"
    expect_words 1095, "mille quatre-vingt-quinze"
    expect_words 1102, "mille cent deux"
    expect_words 1199, "mille cent quatre-vingt-dix-neuf"
    expect_words 1234, "mille deux cent trente-quatre"
    expect_words 2001, "deux mille un"
    expect_words 12001, "douze mille un"
    expect_words 12345, "douze mille trois cent quarante-cinq"
    expect_words 12500, "douze mille cinq cents"
    expect_words 123456, "cent vingt-trois mille quatre cent cinquante-six"
    expect_words 1234567, "un million deux cent trente-quatre mille cinq cent soixante-sept"
    expect_words 9999999, "neuf millions neuf cent quatre-vingt-dix-neuf mille neuf cent quatre-vingt-dix-neuf"
    expect_words 12345678, "douze millions trois cent quarante-cinq mille six cent soixante-dix-huit"
    expect_words 999999999, "neuf cent quatre-vingt-dix-neuf millions neuf cent quatre-vingt-dix-neuf mille neuf cent quatre-vingt-dix-neuf"
    expect_words 999999999999, "neuf cent quatre-vingt-dix-neuf milliards neuf cent quatre-vingt-dix-neuf millions neuf cent quatre-vingt-dix-neuf mille neuf cent quatre-vingt-dix-neuf"
  end
end
