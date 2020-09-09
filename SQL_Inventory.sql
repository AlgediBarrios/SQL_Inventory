USE [Inventory]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailLost]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailLost](
	[DetailLostID] [int] IDENTITY(1,1) NOT NULL,
	[LostID] [int] NOT NULL,
	[UnityCost] [decimal](6, 2) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_DetailLost] PRIMARY KEY CLUSTERED 
(
	[DetailLostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entry]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entry](
	[EntryID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Total] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_Entry] PRIMARY KEY CLUSTERED 
(
	[EntryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntryDetails]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryDetails](
	[EntryDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[EntryID] [int] NOT NULL,
	[UnityCost] [decimal](6, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductLotID] [int] NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Entries] PRIMARY KEY CLUSTERED 
(
	[EntryDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lost]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lost](
	[LostID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[ReasonLostID] [int] NOT NULL,
	[Total] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_Lost] PRIMARY KEY CLUSTERED 
(
	[LostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLot]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLot](
	[ProductLotID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](20) NOT NULL,
	[Modified] [nchar](10) NOT NULL,
	[Active] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ProductLot] PRIMARY KEY CLUSTERED 
(
	[ProductLotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[BrandID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Price] [decimal](6, 2) NULL,
	[Cost] [decimal](6, 2) NULL,
	[Existency] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReasonsLost]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReasonsLost](
	[ReasonLostID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ReasonsLost] PRIMARY KEY CLUSTERED 
(
	[ReasonLostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleDetails]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleDetails](
	[SaleDetailID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NOT NULL,
	[UnityCost] [decimal](6, 2) NULL,
	[UnityPrice] [decimal](6, 2) NULL,
	[Quantity] [int] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_SaleDetails] PRIMARY KEY CLUSTERED 
(
	[SaleDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[Total] [decimal](6, 2) NULL,
	[Date] [datetime] NULL,
	[StatusID] [int] NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 9/7/2020 6:53:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[AssemblyID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[StockID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_Assembly] PRIMARY KEY CLUSTERED 
(
	[AssemblyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Entry] ADD  CONSTRAINT [DF_Entry_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Lost] ADD  CONSTRAINT [DF_Lost_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[ProductLot] ADD  CONSTRAINT [DF_ProductLot_Description]  DEFAULT (' ') FOR [Description]
GO
ALTER TABLE [dbo].[ProductLot] ADD  CONSTRAINT [DF_ProductLot_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[ProductLot] ADD  CONSTRAINT [DF_ProductLot_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Sales] ADD  CONSTRAINT [DF_Sales_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Storage] ADD  CONSTRAINT [DF_Assembly_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[DetailLost]  WITH CHECK ADD  CONSTRAINT [FK_DetailLost_Lost] FOREIGN KEY([LostID])
REFERENCES [dbo].[Lost] ([LostID])
GO
ALTER TABLE [dbo].[DetailLost] CHECK CONSTRAINT [FK_DetailLost_Lost]
GO
ALTER TABLE [dbo].[DetailLost]  WITH CHECK ADD  CONSTRAINT [FK_DetailLost_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[DetailLost] CHECK CONSTRAINT [FK_DetailLost_Products]
GO
ALTER TABLE [dbo].[Entry]  WITH CHECK ADD  CONSTRAINT [FK_Entry_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Entry] CHECK CONSTRAINT [FK_Entry_Status]
GO
ALTER TABLE [dbo].[EntryDetails]  WITH CHECK ADD  CONSTRAINT [FK_EntryDetails_Entry] FOREIGN KEY([EntryID])
REFERENCES [dbo].[Entry] ([EntryID])
GO
ALTER TABLE [dbo].[EntryDetails] CHECK CONSTRAINT [FK_EntryDetails_Entry]
GO
ALTER TABLE [dbo].[EntryDetails]  WITH CHECK ADD  CONSTRAINT [FK_EntryDetails_ProductLot] FOREIGN KEY([ProductLotID])
REFERENCES [dbo].[ProductLot] ([ProductLotID])
GO
ALTER TABLE [dbo].[EntryDetails] CHECK CONSTRAINT [FK_EntryDetails_ProductLot]
GO
ALTER TABLE [dbo].[EntryDetails]  WITH CHECK ADD  CONSTRAINT [FK_EntryDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[EntryDetails] CHECK CONSTRAINT [FK_EntryDetails_Products]
GO
ALTER TABLE [dbo].[Lost]  WITH CHECK ADD  CONSTRAINT [FK_Lost_ReasonsLost] FOREIGN KEY([ReasonLostID])
REFERENCES [dbo].[ReasonsLost] ([ReasonLostID])
GO
ALTER TABLE [dbo].[Lost] CHECK CONSTRAINT [FK_Lost_ReasonsLost]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([BrandID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[SaleDetails]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetails_Sales] FOREIGN KEY([SaleID])
REFERENCES [dbo].[Sales] ([SaleID])
GO
ALTER TABLE [dbo].[SaleDetails] CHECK CONSTRAINT [FK_SaleDetails_Sales]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Status]
GO
ALTER TABLE [dbo].[Storage]  WITH CHECK ADD  CONSTRAINT [FK_Storage_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Storage] CHECK CONSTRAINT [FK_Storage_Products]
GO
ALTER TABLE [dbo].[Storage]  WITH CHECK ADD  CONSTRAINT [FK_Storage_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Storage] CHECK CONSTRAINT [FK_Storage_Status]
GO
