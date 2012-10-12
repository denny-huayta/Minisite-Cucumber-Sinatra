Feature: Registro
	In order verificar que funcione el site
	As a desarrollador
	I want to ver Hello World

	Scenario: Registro
		When I go to the home page
		Then I should see "Se registro!"

	Scenario: No Registro
		When I go to the home page
		Then I should see "Debe registrar!"