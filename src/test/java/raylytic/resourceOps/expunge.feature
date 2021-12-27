Feature: Delete all records

Background: Define url
    Given url apiUrl

Scenario: Expunge operation - Delete all patient records
    Given path '$expunge'
    And request 
    """
    { 
        "resourceType": "Parameters",
        "parameter": [
          {
            "name": "expungeDeletedResources",
            "valueBoolean": true
          },
          {
            "name": "expungePreviousVersions",
            "valueBoolean": true
          },
          {
            "name": "expungeEverything",
            "valueBoolean": true
          }
        ]
    }
    """
    When method Post
    Then status 200
    And match response.resourceType == "Parameters"
    And match response.parameter == '#array'
    And match response.parameter[0].name == "count"
    And match response.parameter[0].valueInteger == 0