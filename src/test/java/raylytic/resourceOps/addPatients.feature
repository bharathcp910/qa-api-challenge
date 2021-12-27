Feature: Add patient records

    Background: Define url
        Given url apiUrl

    Scenario Outline: Add patient - Add 30 patients
        Given path 'Patient'
        And request 
        """
        { 
            "resourceType": "Patient",
            "name": [
              {
                "family": "<family>",
                "given": <given>
              }
            ]
        }
        """
        When method Post
        Then status 201

        Examples:
        | family           | given                                      |
        | Potter           | ["Harry", "James"]                         |
        | Weasley          | ["Ronald", "Bilius"]                       |
        | Weasley          | ["Fred", "Bilius"]                         |
        | Weasley          | ["George", "Bilius"]                       |
        | Weasley          | ["Percy", "Bilius"]                        |
        | Weasley          | ["Ginny", "Bilius"]                        |
        | Weasley          | ["Charlie", "Bilius"]                      |
        | Weasley          | ["Bill", "Bilius"]                         |
        | Granger          | ["Hermione"]                               |
        | Riddle           | ["Tom", "Marvolo"]                         |
        | Dursley          | ["Dudley", "Vernon"]                       |
        | Dursley          | ["Petunia"]                                |
        | Dursley          | ["Vernon"]                                 |
        | Filch            | ["Argus"]                                  |
        | Dumbledore       | ["Albus", "Percival", "Wulfric", "Brian"]  |
        | Mcgonagall       | ["Minerva"]                                |
        | Delacour         | ["Fleur"]                                  |
        | Longbottom       | ["Neville"]                                |
        | Thomas           | ["Dean"]                                   |
        | Finnigan         | ["Seamus"]                                 |
        | Malfoy           | ["Draco"]                                  |
        | Malfoy           | ["Narcissa"]                               |
        | Malfoy           | ["Lucius"]                                 |
        | weasley          | ["Arthur"]                                 |
        | Weasley          | ["Molly"]                                  |
        | Goyle            | ["Gregory"]                                |
        | Crabbe           | ["Vincent"]                                |
        | Dolohov          | ["Antonin"]                                |
        | Lestrange        | ["Bellatrix"]                              |
        | Black            | ["Sirius"]                                 |
