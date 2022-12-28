Feature: Posts List

    Scenario: Get Posts
        Given I'm logged in
        And the BE will respond with empty posts list from local
        And the BE will respond with posts list from internet
        And the BE will update local database with api list
        And the app is running
        Then I see Posts list