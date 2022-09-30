create database AirwaysDemo

go

USE [AirwaysDemo]
GO

/****** Object:  Table [dbo].[Passenger]    Script Date: 28-Sep-22 2:16:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Passenger](
	[PassID] [int] NOT NULL,
	[PassName] [nvarchar](50) NULL,
	[PassAge] [int] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[PassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_Booking] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
GO

ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_Booking]
GO


CREATE TABLE [dbo].[Booking](
	[BookingID] [int] NOT NULL,
	[BookingDate] [date] NULL,
	[NoOfSeats] [int] NULL,
	[RatePerSeat] [int] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




