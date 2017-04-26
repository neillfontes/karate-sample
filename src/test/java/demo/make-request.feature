Feature: Makes request

  Background:
    * def auth = callonce read('get-token.feature')

  Scenario: Get sample JSON data from URL - Part 1

    Given   url 'http://brentertainment.com/oauth2/lockdin/resource'
    And   param access_token = auth.accessToken
    When method get
    Then status 200
    *     print response

  Scenario: Get sample JSON data from URL - Part 2

    Given   url 'http://brentertainment.com/oauth2/lockdin/resource'
    And   param access_token = auth.accessToken
    When method get
    Then status 200
    *     print response