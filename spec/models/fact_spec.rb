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

# Unit tests for Kuapir::Fact
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Kuapir::Fact do
  let(:instance) { Kuapir::Fact.new }

  describe "test an instance of Fact" do
    it "should create an instance of Fact" do
      expect(instance).to be_instance_of(Kuapir::Fact)
    end
  end
  describe 'test attribute "text"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FACT", "BLOOPER"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "spoiler"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
