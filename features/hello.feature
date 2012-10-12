Feature: Registro
	In order verificar que funcione el site
	As a desarrollador
	I want to ver Hello World

	Scenario: Registro
		When I go to the home page
		And I fill in "name" with ""
		And I fill in "email" with ""
		And I fill in "comment" with ""
		Then I should see "Debe registrar!"

	Scenario: No Registro
		When I go to the home page
		And I fill in "name" with "*"
		And I fill in "email" with "*"
		And I fill in "comment" with "*"
		Then I should see "Se registro!"