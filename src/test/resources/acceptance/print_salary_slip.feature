Feature: Printing Salary Slip

	Scenario Outline: Print salaries with different taxation

		Given an employee with an annual gross salary of £ <gross_salary>
 	    When we generate the salary slip
		Then the salary slip should contain monthly gross salary of £ <monthly_gross_salary>
		And national insurance contribution of £ <national_insurance>
		And tax-free allowance of £ <tax_free_allowance>
		And taxable income of £ <taxable_income>
		And tax payable of £ <tax_payable>

		Examples:
			| gross_salary | monthly_gross_salary | national_insurance | tax_free_allowance | taxable_income | tax_payable |
			|         6000 |               500.00 |               0.00 |             500.00 |           0.00 |         0.0 |
			|        11000 |               916.67 |              29.40 |             916.67 |           0.00 |         0.0 |
			|        12000 |              1000.00 |              39.40 |             916.67 |          83.33 |       16.67 |
			|        30000 |              2500.00 |             219.40 |             916.67 |        1583.33 |      316.67 |
