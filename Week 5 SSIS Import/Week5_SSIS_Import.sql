USE AdventureWorks2022;
GO

--Creates table to hold imported data from SampleCurrencyData.txt
CREATE TABLE dbo.SampleCurrencyConversion (
	FirstConversionRate			DECIMAL(10, 9)	NOT NULL,
	CurrencyCode				NCHAR(3)		NOT NULL	REFERENCES Sales.Currency(CurrencyCode),
	CurrencyRateDate			DATETIME		NOT NULL,
	SecondConversionRate		DECIMAL(10, 9)	NOT NULL
);