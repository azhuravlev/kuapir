# frozen_string_literal: true

# #Kinopoisk Unofficial API

# The version of the OpenAPI document: 2.0.1
# Contact: support@kinopoiskapiunofficial.tech
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1
#

require "spec_helper"
require "json"

# Unit tests for Kuapir::ReviewsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ReviewsApi" do
  before do
    # run before each test
    @api_instance = Kuapir::ReviewsApi.new
  end

  after do
    # run after each test
  end

  describe "test an instance of ReviewsApi" do
    it "should create an instance of ReviewsApi" do
      expect(@api_instance).to be_instance_of(Kuapir::ReviewsApi)
    end
  end

  # unit tests for api_v1_reviews_details_get
  # получить полную рецензию по kinopoisk review id
  # Возвращает полную информацию о рецензии.
  # @param review_id kinopoisk review id
  # @param [Hash] opts the optional parameters
  # @return [ReviewDetailsResponse]
  describe "api_v1_reviews_details_get test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_v1_reviews_get
  # получить рецензии зрителей
  # Возвращает список рецензий с пагинацией. Каждая страница содержит не более чем 20 рецензий. Поле &lt;b&gt;description&lt;/b&gt; содержит не полный текст рецензии. Полный текст может быть получен из /api/v1/reviews/details
  # @param film_id kinopoisk film id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page номер страницы
  # @return [ReviewsResponse]
  describe "api_v1_reviews_get test" do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
