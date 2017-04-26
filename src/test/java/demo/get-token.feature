Feature: OAuth Endpoint - Successful Authentication

  Scenario: Login to OAuth Endpoint with valid user/password/grant/secret

    Given   url 'http://brentertainment.com/oauth2/lockdin/token'
    And  header Content-Type = 'application/x-www-form-urlencoded'
    And request 'grant_type=password&client_id=demoapp&client_secret=demopass&username=demouser&password=testpass'
    When method post
    Then status 200
    And     def accessToken = $.access_token
    *     print accessToken
