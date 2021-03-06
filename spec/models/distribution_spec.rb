# frozen_string_literal: true

# #Kinopoisk Unofficial API

# The version of the OpenAPI document: 2.0.1
# Contact: support@kinopoiskapiunofficial.tech
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1
#

require "spec_helper"
require "json"
require "date"

# Unit tests for Kuapir::Distribution
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Kuapir::Distribution do
  let(:instance) { Kuapir::Distribution.new }

  describe "test an instance of Distribution" do
    it "should create an instance of Distribution" do
      expect(instance).to be_instance_of(Kuapir::Distribution)
    end
  end
  describe 'test attribute "type"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["LOCAL", "COUNTRY_SPECIFIC", "PREMIERE", "ALL", "WORLD_PREMIER"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sub_type"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CINEMA", "DVD", "DIGITAL", "BLURAY"])
      # validator.allowable_values.each do |value|
      #   expect { instance.sub_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "date"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "re_release"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "country"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "companies"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
