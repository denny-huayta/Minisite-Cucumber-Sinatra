Feature: Registro
	In order verificar que funcione el registro
	As a desarrollador
	I want to Registrar

	Scenario: Registro
		When I go to the home page
		And I fill in "name" with ""
		And I fill in "email" with ""
		And I fill in "comment" with ""
		And I press "Submit"
		Then I should see "Debe registrar!"

	Scenario: No Registro
		When I go to the home page
		And I fill in "name" with "Denny"
		And I fill in "email" with "denny_ha@hotmail.com"
		And I fill in "comment" with "Any comment"
		And I press "Submit"
		Then I should see "Se registro!"