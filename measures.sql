EVALUATE
	ROW(
		"Table", "Data Professional Survey (2)",
		"Column", "Average Salary",
		"Count", COUNT('Data Professional Survey (2)'[Average Salary]),
		"Distinct Values", DISTINCTCOUNTNOBLANK('Data Professional Survey (2)'[Average Salary]),
		"Null Count", COUNTROWS('Data Professional Survey (2)') - COUNT('Data Professional Survey (2)'[Average Salary]),
		"Min", MIN('Data Professional Survey (2)'[Average Salary]),
		"Max", MAX('Data Professional Survey (2)'[Average Salary]),
		"Median", MEDIAN('Data Professional Survey (2)'[Average Salary]),
		"Mean", AVERAGE('Data Professional Survey (2)'[Average Salary]),
		"Standard Deviation", STDEV.P('Data Professional Survey (2)'[Average Salary]),
		"Zeros", COALESCE(
			COUNTROWS(FILTER(
				'Data Professional Survey (2)',
				'Data Professional Survey (2)'[Average Salary] = 0
			)),
			0
		),
		"Evens", COALESCE(
			COUNTROWS(FILTER(
				'Data Professional Survey (2)',
				MOD(
					'Data Professional Survey (2)'[Average Salary],
					2
				) = 0
			)),
			0
		),
		"Odds", COALESCE(
			COUNTROWS(FILTER(
				'Data Professional Survey (2)',
				MOD(
					'Data Professional Survey (2)'[Average Salary],
					2
				) <> 0
			)),
			0
		),
		"P25", PERCENTILE.INC(
			'Data Professional Survey (2)'[Average Salary],
			0.25
		),
		"P75", PERCENTILE.INC(
			'Data Professional Survey (2)'[Average Salary],
			0.75
		)
	)