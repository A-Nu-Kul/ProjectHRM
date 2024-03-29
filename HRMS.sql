USE [master]
GO
/****** Object:  Database [CHRMS]    Script Date: 1/6/2016 9:32:29 AM ******/
CREATE DATABASE [CHRMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CHRMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CHRMS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CHRMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CHRMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CHRMS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CHRMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CHRMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CHRMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CHRMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CHRMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CHRMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [CHRMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CHRMS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CHRMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CHRMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CHRMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CHRMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CHRMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CHRMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CHRMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CHRMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CHRMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CHRMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CHRMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CHRMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CHRMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CHRMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CHRMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CHRMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CHRMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CHRMS] SET  MULTI_USER 
GO
ALTER DATABASE [CHRMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CHRMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CHRMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CHRMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CHRMS]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[To] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Daily_Attendence_Report]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Daily_Attendence_Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Attendence] [nvarchar](50) NULL,
	[Date] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Earning_Details]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Earning_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Type_Of_Employee] [nvarchar](50) NULL,
	[Category_Of_Employee] [nvarchar](50) NULL,
	[Grade] [nvarchar](50) NULL,
	[Type_Of_Staff] [nvarchar](50) NULL,
	[Basic_Salary] [float] NULL,
	[Salary_Per_Day] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee_Leave]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Leave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Email_ID] [nvarchar](50) NULL,
	[Leave_Type] [nvarchar](50) NULL,
	[Month] [nvarchar](50) NULL,
	[No_Of_Days] [decimal](18, 0) NULL,
	[Leave_Period] [nvarchar](50) NULL,
	[Reason] [text] NULL,
	[Address] [text] NULL,
	[From_Date] [nvarchar](max) NULL,
	[End_Date] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee_Loan]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Loan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Grade] [nvarchar](50) NULL,
	[Type_Of_Employee] [nvarchar](50) NULL,
	[Type_Of_Staff] [nvarchar](50) NULL,
	[Category_Of_Employee] [nvarchar](50) NULL,
	[Type_Of_Loan] [nvarchar](50) NULL,
	[Date_Of_Application] [nvarchar](max) NULL,
	[Proposed_Loan_Amount] [float] NULL,
	[No_Of_Installment_For_Recovery] [int] NULL,
	[Start_Date_Of_Recovery] [nvarchar](max) NULL,
	[Interest_Rate] [float] NULL,
	[Interest_Amount] [float] NULL,
	[Purpose_Of_Loan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee_Monthly_Attendence]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Monthly_Attendence](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Select_Month] [nvarchar](50) NULL,
	[Select_Year] [int] NULL,
	[Total_Working_Days] [int] NULL,
	[Total_Present_Days] [int] NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee_Training]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Training](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Training_Provider] [nvarchar](50) NULL,
	[Trainee] [nvarchar](50) NULL,
	[Training_Location] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job_Details]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Type_of_Employee] [nvarchar](50) NULL,
	[Grade] [nvarchar](50) NULL,
	[Category_Of_Employee] [nvarchar](50) NULL,
	[Type_Of_Staff] [nvarchar](50) NULL,
	[Mode_Of_Recruitment] [nvarchar](50) NULL,
	[Date_Of_Joining] [nvarchar](max) NULL,
	[Date_Of_Conformation] [nvarchar](max) NULL,
	[Date_Of_Last_Increment] [nvarchar](max) NULL,
	[Branch] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Reporting_Boss] [nvarchar](50) NULL,
	[CV_Uploaded] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Monthly_Leave_Report]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Monthly_Leave_Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Month] [nvarchar](50) NULL,
	[Year] [nvarchar](50) NULL,
	[Total_Leave] [int] NULL,
	[Remaining_Leave] [int] NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](50) NULL,
	[Middle_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Date_OF_Birth] [nvarchar](max) NULL,
	[Email_ID] [nvarchar](50) NULL,
	[Phone_No] [decimal](18, 0) NULL,
	[Education] [nvarchar](50) NULL,
	[Specialization] [nvarchar](50) NULL,
	[Martial_Status] [nvarchar](50) NULL,
	[Experience] [nvarchar](50) NULL,
	[Former_Company] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Salary] [float] NULL,
	[Referred_By] [nvarchar](50) NULL,
	[Employee_ID] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Register]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Type_Of_Employee] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Category_Of_Employee] [nvarchar](50) NULL,
	[Grade] [nvarchar](10) NULL,
	[Type_Of_Staff] [nvarchar](50) NULL,
	[Fathers_Name] [nvarchar](50) NULL,
	[DOB] [nvarchar](max) NULL,
	[Sex] [nvarchar](50) NULL,
	[Caste] [nvarchar](50) NULL,
	[Medical_Fitness] [nvarchar](50) NULL,
	[Blood_Group] [nvarchar](50) NULL,
	[Religion ] [nvarchar](50) NULL,
	[Martial_Status] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Address ] [nvarchar](150) NULL,
	[PIN ] [int] NULL,
	[Mobile_Number] [decimal](18, 0) NULL,
	[Personal_Email_ID] [nvarchar](50) NULL,
	[Personal_Verification_Card] [nvarchar](50) NULL,
	[Card_Number] [int] NULL,
	[Image_Upload] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salary_Structure]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary_Structure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Total_Days] [int] NULL,
	[Total_Present] [int] NULL,
	[Leave] [int] NULL,
	[Basic_Salary] [float] NULL,
	[Salary_Per_Day] [float] NULL,
	[Other_Pay] [float] NULL,
	[Over_Time] [float] NULL,
	[Earnings] [float] NULL,
	[Deduction] [float] NULL,
	[Net_Pay] [float] NULL,
	[Month] [nvarchar](50) NULL,
	[Year] [int] NULL,
	[Remarks] [nvarchar](100) NULL,
	[Total_Earnings] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Training_Event]    Script Date: 1/6/2016 9:32:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Training_Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tiltle] [nvarchar](50) NULL,
	[Training_Place] [nvarchar](50) NULL,
	[Start_Date] [nvarchar](max) NULL,
	[End_Date] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [CHRMS] SET  READ_WRITE 
GO
