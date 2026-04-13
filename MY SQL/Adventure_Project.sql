create database Adventure_works_cycle;
use adventure_works_cycle;

create table Dimcustomer (
CustomerKey int PRIMARY KEY,
FristName varchar(50),
LastName varchar(50),
Gender char(50),
EnglishOccupation varchar(50),
City varchar(50),
StateProvinceName varchar(50),
CountryRegionName varchar(50)
)
;

create table Dimproduct (
ProductKey int PRIMARY KEY,
ProductSubCategoryKey int,
EnglishProductName varchar(100),
Color varchar(20),
StandarCost Decimal(10,2),
Lastprice Decimal(10,2)
)
;

Create Table DimProductSubCategory (
ProductSubCategorykey int primary key,
ProductCategory int,
EnglishProductSubCategoryName varchar(50)
);

create Table DimProductCategory (
productCategorykey int primary key,
EnglishProductCategoryName varchar(50)
);

create table DimSalesTerritory (
Salesterritorykey int primary key,
SalesTerritoryRegion varchar(50),
SalesTerritoryCountry varchar(50),
SalesTerritoryGroup varchar(50)
);

create table DimDate (
Datekey int primary key	,
FullDate date,
DayNumberOfWeek int,
EnglishDayNameOfWeek varchar(20),
MonthNumberOfYear int,
EnglishMonthName varchar(20),
CalederQuarter int,
CalenderYeaar int
);

create table FactInterNetSales (
SalesOrderNumber varchar(20),
SalesOrderLineNumber int,
OrderDateKey int,
CustomerKey int,
ProductKey int,
SalesTerritoryKey int,
OrderQuantity 	int,
UnitPrice decimal(10,2),
UnitPriceDiscountPct decimal(5,2),
SalesAmount decimal(12,2),
primary key (SalesOrderNumber, SalesOrderLineNumber)
);

create Table FactInterNetNewSales (
SalesOrderNumber varchar(20),
SalesOrderLineNumber int,
OrderDateKey int,
CustomerKey int,
ProductKey int,
SalesTerritoryKey int,
OrderQuantity 	int,
UnitPrice decimal(10,2),
UnitPriceDiscountPct decimal(5,2),
SalesAmount decimal(12,2),
primary key (SalesOrderNumber, SalesOrderLineNumber)
);


