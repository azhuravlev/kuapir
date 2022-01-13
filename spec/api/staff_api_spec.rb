# frozen_string_literal: true

# #Kinopoisk Unofficial API

# The version of the OpenAPI document: 2.0.1
# Contact: support@kinopoiskapiunofficial.tech
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1
#

require "spec_helper"
require "json"

# Unit tests for Kuapir::StaffApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "StaffApi" do
  before do
    # run before each test
    @api_instance = Kuapir::StaffApi.new
  end

  after do
    # run after each test
  end

  describe "test an instance of StaffApi" do
    it "should create an instance of StaffApi" do
      expect(@api_instance).to be_instance_of(Kuapir::StaffApi)
    end
  end

  # unit tests for api_v1_staff_get
  # получить данные об актерах, режисерах и т.д. по kinopoisk film id
  # @param film_id kinopoisk film id
  # @param [Hash] opts the optional parameters
  # @return [Array<StaffResponse>]
  describe "api_v1_staff_get test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_v1_staff_id_get
  # получить данные о конкретном человеке по kinopoisk person id
  # @param id kinopoisk person id
  # @param [Hash] opts the optional parameters
  # @return [PersonResponse]
  describe "api_v1_staff_id_get test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end