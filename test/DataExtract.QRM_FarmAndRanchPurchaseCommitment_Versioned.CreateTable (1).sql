/*    ==Scripting Parameters==

    Source Database Engine Edition : Microsoft Azure SQL Database Edition
    Source Database Engine Type : Microsoft Azure SQL Database

    Target Database Engine Edition : Microsoft Azure SQL Database Edition
    Target Database Engine Type : Microsoft Azure SQL Database
*/

/****** Object:  Table [DataExtract].[QRM_FarmAndRanchPurchaseCommitment_Versioned]    Script Date: 6/10/2020 9:07:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DataExtract].[QRM_FarmAndRanchPurchaseCommitment_Versioned](
	[thisPKSurrogate] [int] IDENTITY(1,1) NOT NULL,
	[ODSExtractYear] [numeric](18, 0) NOT NULL,
	[ODSExtractMonth] [numeric](18, 0) NOT NULL,
	[ODSExtractDay] [numeric](18, 0) NOT NULL,
	[LOANNUM] [varchar](128) NOT NULL,
	[CYCLE_DATE] [datetime] NULL,
	[TRANSACTION CODE] [numeric](5, 0) NULL,
	[SWAPCODE] [varchar](5) NULL,
	[POOL] [varchar](10) NULL,
	[UPB] [numeric](18, 5) NULL,
	[NOTE RATE] [numeric](18, 5) NULL,
	[GROSSWAC] [numeric](18, 5) NULL,
	[ORIGDATE] [datetime] NULL,
	[MATDATE] [datetime] NULL,
	[BALLDATE] [datetime]NULL,
	[INTEREST RATE TYPE] [numeric](5, 0) NULL,
	[PRINCIPAL PAYMENT TYPE] [numeric](5, 0) NULL,
	[INTPMTTYPE] [numeric](5, 0) NULL,
	[AMORTTYPE] [numeric](5, 0) NULL,
	[Principal/ P&I Payment Frequency] [numeric](5, 0) NULL,
	[INTFREQ] [numeric](18, 0) NULL,
	[PRINFREQ] [numeric](18, 0) NULL,
	[INTEREST ACCRUAL METHOD] [numeric](18, 0) NULL,
	[DAYCOUNT] [numeric](18, 0) NULL,
	[GFEE] [numeric](18, 5) NULL,
	[RESETFREQ] [numeric](18, 0) NULL,
	[NEXTRESET] [datetime] NULL,
	[GROSSMGN] [numeric](18, 5) NULL,
	[MAXIMUM LIFE RATE][numeric](18, 5) NULL,
	[LIFECAP] [numeric](18, 5) NULL,
	[MINIMUM LIFE RATE][numeric](18, 5) NULL,
	[LIFEFLOOR] [numeric](18, 5) NULL,
	[PERIODIC RATE INCREASE LIMIT][numeric](18, 5) NULL,
	[PRDCAP] [numeric](18, 5) NULL,
	[PERIODIC RATE DECREASE LIMIT][numeric](18, 5) NULL,
	[PRDFLOOR] [numeric](18, 5) NULL,
	[RATEINDEX] [numeric](18, 0) NULL,
	[CLTV] [numeric](18, 5) NULL,
	[Collateral] [varchar](255) NULL,
	[Migration] [varchar](26) NULL,
	[Property State][varchar](2) NULL,
	[Region] [varchar](9) NULL,
	[PRMIS] [numeric](3, 0) NULL,
	[Exposure Type] [varchar](19) NULL,
	[Default] [numeric](18, 0) NULL,
	[ValidFrom] [datetime2](2) GENERATED ALWAYS AS ROW START NOT NULL,
	[ValidTo] [datetime2](2) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK_DataExtract_QRM_FarmAndRanchPurchaseCommitment_Versioned] PRIMARY KEY CLUSTERED 
(
	[thisPKSurrogate] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
	PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH
(
SYSTEM_VERSIONING = ON ( HISTORY_TABLE = [DataExtract].[QRM_FarmAndRanchPurchaseCommitment_VersionedHistory] )
)
GO

