-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 14 2021 г., 00:23
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(26, '2018-04-02 00:53:32', NULL, 200, NULL, '639956112920', 'Your code is', NULL, NULL, '1:639956112920:131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-04-02 00:54:43', NULL, 200, NULL, '639956112920', 'Your code is 3407', NULL, NULL, '1:639956112920:132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '0', 1, 118, 'PROID', 10),
(2, '0', 1, 95, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(1, 'Automative', 0),
(3, 'Electrical', 0),
(5, 'Great outdoors', 0),
(6, 'Hand Tools', 0),
(7, 'Heating and Cooling', 0),
(8, 'Home Hardware', 0),
(9, 'Paint and Stain', 0),
(10, 'Power Tools', 0),
(21, 'Builder Supplies', 0),
(22, 'Farm and Ranch', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(1, 'baq', 'baq', '', '', '', '', 'almaty', '', '', '0000-00-00', 'Male', '1234567890', '', 0, 'baq', '4e17a448e043206801b95de317e07c839770c8b8', 'customer_image/147475298_267908578068417_7298222424571758190_n.jpg', 1, '2021-05-13');

-- --------------------------------------------------------

--
-- Структура таблицы `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(47, 'BOOSTER CABLE W/POLAR-GLO CLAMPS\r\n\r\nNo-Tangle(TM) 16 ft. 4 ga. booster cables\r\nT-Prene(R) jacket remains flexible in extreme cold temperatures\r\nOil, chemical & water resistant wire jacket\r\nClamps\' triple-polarity identification includes: color coding     ', '', 50, 30, 41.5, 1, 'uploaded_photos/product2.jpg', 'Available', 'AinurAizhan', '7760069339'),
(48, 'HEAVY DUTY PUMP OILER ~  1 PINT\r\n\r\n\r\nGOLDENROD heavy duty pump oiler, built to last. Precision machined, replaceable parts throughout; screw cap filler opening, interchangeable spouts, zinc die-cast high pressure pump with precision machined piston.\r\n    ', '', 60, 18.65, 23.58, 1, 'uploaded_photos/product3.jpg', 'Available', 'AinurAizhan', '7760069339'),
(49, '2 TON FLOOR JACK\r\n\r\nPerformance Tool garage jacks feature high-quality swivel casters for quick and easy positioning and a durable flanged steel frame for long-lasting performance. They have a lift range of 5 to 15 1/2 in. and are great for cars and light', '', 20, 80, 112.6, 1, 'uploaded_photos/product4.jpg', 'Available', 'AinurAizhan', '7760069339'),
(50, 'BONDO BODY FILLER WITH CAP\r\n\r\nRepairs dents, holes and leaks\r\nFor metal, wood, steel or plastic\r\nFormulated to be non-shrinking, non-reactive\r\nShapes in minutes\r\nPermanently durable\r\nIncludes red cream hardener', '', 50, 18.3, 25, 1, 'uploaded_photos/product1.jpg', 'Available', 'AinurAizhan', '7760069339'),
(51, 'POWER SERVICE DIESEL 911\r\n\r\n\r\nDiesel 911 is a winter emergency use product. This Winter Rescue Formula reliquefies gelled fuel and de-ices frozen fuel-filters to restore the flow of diesel fuel to an engine. Diesel 911 does not prevent fuel gelling – use ', '', 80, 8.3, 14.62, 1, 'uploaded_photos/product5.jpg', 'Available', 'AinurAizhan', '7760069339'),
(52, 'MOBIL 1 ADVANCED EXTENDED PERFORMANCE  FULL SYNTHETIC MOTOR OIL\r\n\r\n\r\nMobil 1 Extended Performance is an advanced full synthetic motor oil that keeps your engine running like new and provides protection for up to 15,000 miles between oil changes. \r\n       ', '', 50, 30, 44.3, 1, 'uploaded_photos/product6.jpg', 'Available', 'AinurAizhan', '7760069339'),
(53, 'BIG BED JR. TRUCK TAILGATE  EXTENDER\r\n\r\nErickson 07605 Big Bed Junior (Tailgate Extender) is smaller version of Erickson\'s original Big Bed Extender. BIG BED = BIG BENEFITS!!!\r\n\r\n                  ', '', 20, 50, 73.65, 1, 'uploaded_photos/product7.jpg', 'Available', 'AinurAizhan', '7760069339'),
(54, 'DELUXE WHEEL BEARING PACKER\r\n\r\nFor use with either hand operated or power lube equipment\r\nThreaded center post for positive locking\r\nFor all car, boat, trailer & RV bearings\r\nMinimum ID: 1/2\", Maximum OD: 5\"\r\nHeight of 1/4\" to 2\"\r\n           ', '', 60, 10, 16.54, 1, 'uploaded_photos/product8.jpg', 'Available', 'AinurAizhan', '7760069339'),
(55, 'ZIP WAX CAR WASH\r\n\r\nAdvanced sudsing action gently and safely lifts dirt and grime.\r\nAdds Turtle Wax shine as it washes.\r\nWon\'t streak or spot.', '', 100, 2, 3.5, 1, 'uploaded_photos/product9.jpg', 'Available', 'AinurAizhan', '7760069339'),
(56, '7-WAY ROUND TO 6-WAY ROUND PIN ADAPTER\r\n\r\n7-way blade-type terminal to 6-way round pin adapter with 7-way stop circuit wired to 6-way (S) pin\r\nCenter pin \"auxiliary\"\r\nNon-corrosive thermo plastic construction\r\n\r\n                               ', '', 200, 6, 10.4, 1, 'uploaded_photos/product10.jpg', 'Available', 'AinurAizhan', '7760069339'),
(57, 'HEAVY DUTY FASTBACK SCANNING HOOK\r\n\r\nHeavy duty 2-piece design\r\nSturdy plastic back\r\nWorks in 1/4\" perforated paneling & slatwall\r\nWorks directly under shelves\r\nWill not damage paneling\r\nUse R35, R44, RQ or metal plate label holders\r\n.212 diameter - galva', '', 50, 90, 130.56, 21, 'uploaded_photos/product11.jpg', 'Available', 'AinurAizhan', '7760069339'),
(58, 'DOOR BOTTOM\r\n\r\n\r\nEnergy loss through the bottom of doors can be minimized with the installation of a door bottom in conjunction with your smooth top threshold. This combination provides a weatherproof seal between the bottom of the door              ', '', 50, 20, 33, 21, 'uploaded_photos/product12.jpg', 'Available', 'AinurAizhan', '7760069339'),
(62, 'EXTRA STRENGTH FIBERGLASS SCREEN\r\n\r\nHeavyweight weave is 40% stronger than standard fiberglass mesh screening\r\nProvides greater protection and long-lasting durability\r\nOffers excellent outward visibility\r\nPerfect for large windows, doors & high use area\r\n', '', 100, 10, 15, 21, 'uploaded_photos/product16.jpg', 'Available', 'AinurAizhan', '7760069339'),
(63, 'D-HANDLE ROOFING TOOL SHINGLE REMOVER\r\n\r\nRazor-Back series roofing shovel\r\nDesigned for removing roof shingles\r\nFeatures an open-back, industrial gauge steel blade with turned step\r\nHas welded fulcrum for leverage\r\nSocket attaches to 30\" hardwood        ', '', 60, 30, 44, 21, 'uploaded_photos/product17.jpg', 'Available', 'AinurAizhan', '7760069339'),
(64, 'TEKTOP 100% SILICONE ROOF COATING\r\n\r\nA high-performance roof coating to protect your roof from the elements & stop leaks\r\nA solvent-free, 100% silicone roof coating\r\nCreated to permanently shield and repair existing roofs against leaks.                   ', '', 50, 250, 300, 21, 'uploaded_photos/product18.jpg', 'Available', 'AinurAizhan', '7760069339'),
(65, 'OUTSIDE CROWN TRIM BLOCK\r\n\r\nEasy to install, no-mitering decorative block\r\nInstalls with hammer & finishing nails\r\nGives professional look to any room\r\nMade of pine\r\nFits mouldings up to 3-1/8\"\r\n3-1/2\" thickness fits moulding up to 3-1/8\"\r\n               ', '', 500, 5, 9, 21, 'uploaded_photos/product19.jpg', 'Available', 'AinurAizhan', '7760069339'),
(66, 'SPEAKER CABLE\r\n\r\nPVC insulation\r\nClear\r\n500 ft. spool', '', 100, 50, 70, 3, 'uploaded_photos/product20.jpg', 'Available', 'AinurAizhan', '7760069339'),
(67, 'HDMI TO HDMI DIGITAL VIDEO/AUDIO CABLE\r\n\r\nTo provide maximum in video & audio signal connectivity for true High Definition viewing\r\nHighly compatible with High Definition plasma TVs, LCD monitors, HDTV satellite receivers, set up boxes, DVD players/record', '', 35, 10, 16, 3, 'uploaded_photos/product21.jpg', 'Available', 'AinurAizhan', '7760069339'),
(68, 'WEATHERPROOF RG-6 COAXIAL CABLE\r\n\r\n75 Ohm - RG-6/U UL AW professional coaxial cable with F connector fittings\r\nAWG18 solid copper clad steel center\r\nDouble aluminum foil shield plus 67% tinned copper braid shield\r\nFor DSS, C/KU satellite installation\r\nUL ', '', 200, 10, 14, 3, 'uploaded_photos/product22.jpg', 'Available', 'AinurAizhan', '7760069339'),
(69, 'DURACELL COPPERTOP ALKALINE BATTERIES\r\n\r\nLong-lasting, reliable power\r\nGreat for toys, remote controls, flashlights, -\r\ncalculators, clocks, radios, portable -\r\nelectronics and wireless mice & keyboards\r\nGuaranteed for five years in storage', '', 200, 5, 8, 3, 'uploaded_photos/product23.jpg', 'Available', 'AinurAizhan', '7760069339'),
(70, '8\" WIRE STRIPPER\r\n\r\nStrips wire from 10 to 24 AWG\r\nAdjustable stopper controls core strip length\r\nSwivel knob micro-adjusts for gauges smaller that 20 AWG\r\nWire crimper crimps 10-22 AWB insulated, 10-22 AQG non-insulated & 7-9mm ignition terminals\r\n      ', '', 50, 15, 22, 3, 'uploaded_photos/product24.jpg', 'Available', '', ''),
(71, '6-OUTLET SURGE PROTECTOR METAL STRIP\r\n\r\nWoods 6-outlet surge protector\r\nDark gray metal housing with black outlet safety covers\r\nLighted switch with LED power indicator\r\nEMI/RFI noise filtration\r\n15A - 120VAC - 60Hz - 1800W\r\nOffers 600 Joules of overload ', '', 300, 10, 16, 3, 'uploaded_photos/product25.jpg', 'Available', 'AinurAizhan', '7760069339'),
(72, 'LIQUID ELECTRICAL TAPE\r\n\r\nAn innovative liquid coating used to insulate and protect electrical splices and connections.\r\n\r\nIt is a rubber insulation coating that exhibits excellent acid, alkaline, abrasion protection.             ', '', 60, 5, 8, 3, 'uploaded_photos/product26.jpg', 'Available', 'AinurAizhan', '7760069339'),
(73, 'SMOKE & CARBON MONOXIDE ALARM\r\n\r\nA 10-year, sealed battery smoke and CO alarm\r\nFeatures photoelectric sensing & electro-chemical sensing technology\r\nWith Smart Hush to silence nuisance alarms\r\n                 ', '', 500, 35, 50, 3, 'uploaded_photos/product27.jpg', 'Available', 'AinurAizhan', '7760069339'),
(74, 'DSL SPLITTER\r\n\r\nSplits the incoming signal to provide separate output for filtered voice (phone) & ADSL (data) eliminating noise from the DSL connection through the telephone', '', 1000, 4, 6, 3, 'uploaded_photos/product28.jpg', 'Available', 'AinurAizhan', '7760069339'),
(75, 'SURROUND EM 12 VOLT FENCE CHARGER\r\n\r\nSafe, effective, shock designed for animals that are sensitive to electric shock like horses, dogs and short haired animals.              ', '', 400, 60, 93, 22, 'uploaded_photos/product29.jpg', 'Available', 'AinurAizhan', '7760069339'),
(76, 'BOX RAIL HANGERS W/BRACKETS\r\n\r\nDesigned for use on wood-frame sliding doors from 1-1/2\" to 2\" thick\r\nPacked with two end caps and bolts for attaching door straps\r\nIncludes (2) #51F single box rails brackets and (1) #51G single-splice box rail brackets\r\n', '', 100, 30, 51, 22, 'uploaded_photos/product30.jpg', 'Available', 'AinurAizhan', '7760069339'),
(78, 'H-D STEEL PIG TAIL STEP-IN POST\r\n\r\nSuper heavy duty 9/32” galvanized steel rod designed to work with ALL wire, polywire, polytape and rope electric fences.  Sharpened post and step-in for easy insertion in hard ground.  Extended step-in fin design provide', '', 100, 100, 124.3, 22, 'uploaded_photos/product32.jpg', 'Available', 'AinurAizhan', '7760069339'),
(79, 'FARM CLEVIS\r\n\r\nBlack painted clevis with zinc plated pin & clip\r\nNot designed for lifting\r\nDo not exceed 13,000 lb WLL (Working Load Limit)\r\nDiameter 7/8\", Pin Diameter 1\", Usable Length 3-1/4\", Opening Width 1-1/4\"                      ', '', 100, 15, 20, 22, 'uploaded_photos/product33.jpg', 'Available', 'AinurAizhan', '7760069339'),
(80, '17 GALLON FEED & SEED DRUM\r\n\r\nStorage drum is ideal for various types of feed, pet food and all kinds of dry seed\r\nTwist and lock stainless steel handle lock\r\nIncludes lid to protect contents and keep intruders out\r\nBPA free and safe for food\r\nCapacity: 1', '', 100, 20, 28, 22, 'uploaded_photos/product34.jpg', 'Available', 'AinurAizhan', '7760069339'),
(81, 'POULTRY NETTING\r\n\r\nKeep your Henny-Penny\'s safe!  Keep them in a designated area or keep them out of your petunias!  Works both ways.   Now you too can be a chicken farmer,  even in the city!  (Check local regulations.)\r\n\r\nNothing like natural, fresh eggs', '', 100, 49, 57.3, 22, 'uploaded_photos/product35.jpg', 'Available', 'AinurAizhan', '7760069339'),
(82, '10 TINE ENSILAGE FORK\r\n\r\nEnsilage fork\r\nWelded 10 tines\r\nSteel ferrule\r\n30\" precision lath turned hardwood\r\nPoly D-grip                      ', '', 100, 33, 44, 22, 'uploaded_photos/product36.jpg', 'Available', 'AinurAizhan', '7760069339'),
(83, 'HILL H4 HEAVY HOG RINGER PLIER\r\n\r\nDesigned to hold & close hog rings & fasteners\r\nUse with H4, all heavy wire rings\r\nMalleable iron casting with chrome finish\r\nHill pattern rings close in a triangle shape                                            ', '', 100, 15, 20, 22, 'uploaded_photos/product37.jpg', 'Available', 'AinurAizhan', '7760069339'),
(84, 'NFL LOGO ECONOMY TENT\r\n\r\nLightweight but sturdy, team logo tent\r\nDurable water resistant polyester material\r\nGives 9 ft.x 9 ft. coverage with a 6 ft. height clearance - stands 9 ft. at tallest point\r\nPowder-coated steel framework\r\n       ', '', 100, 130, 156, 5, 'uploaded_photos/product38.jpg', 'Available', 'AinurAizhan', '7760069339'),
(85, 'AMBER BONE EQUESTRIAN\'S KNIFE\r\n\r\nTru-sharp surgical steel blade\r\nClip blade and hoof pick\r\nPeach seed jigged handle\r\nLength 4.13\" closed\r\n4.4 Oz.', '', 100, 60, 70, 5, 'uploaded_photos/product39.jpg', 'Available', 'AinurAizhan', '7760069339'),
(86, 'PORTABLE GAS GRILL\r\n\r\nAluminized steel on-the-go anywhere grill\r\n11,000 BTU stainless steel gas burner\r\nLegs fold over top to lock lid in place\r\nHeat-resistant handles you don\'t have to wait for the grill to cool down to move it\r\nConvective cooking system', '', 100, 30, 43, 5, 'uploaded_photos/product40.jpg', 'Available', 'AinurAizhan', '7760069339'),
(87, 'COOLING SKULL CAP\r\n\r\n\r\n\r\nCool your head and wear under ball cap  or bikers or hard hat helmet! \r\n\r\nComeaux Caps Skull Caps Slip-on skull cap fits comfortably above the ear. Lightweight, breathable fabric.\r\n\r\n               ', '', 100, 5, 7, 5, 'uploaded_photos/product41.jpg', 'Available', 'AinurAizhan', '7760069339'),
(88, 'DAKURA CAMO SERIES SAFETY EYEWEAR\r\n\r\nEdge Eyewear - Dakura Camouflage glasses\r\nTo blend in or stand out in the crowd\r\nLightweight, flexible & shatter-resistant frames\r\nWrap-around design eliminates side -\r\nshield distortion\r\nScratch-resistant polycarbonat', '', 100, 8, 10, 5, 'uploaded_photos/product42.jpg', 'Available', 'AinurAizhan', '7760069339'),
(89, '50 QUART NON-WHEELED COOLER\r\n\r\n50 quart capacity cooler has built-in cup holders in split cooler lid\r\nFits (4) 12 oz. cans or 20 oz. bottles\r\nEasy-to-clean liner featuring Microban anti-microbial protection\r\nSide swing handles w/easy carry comfort grip\r\n', '', 100, 20, 33, 5, 'uploaded_photos/product44.jpg', 'Available', 'AinurAizhan', '7760069339'),
(90, 'PELICAN 50 QUART ELITE COOLER\r\n\r\nFeatures 7-10 day ice retention, freezer grade gasket & 2\" polyurethane insulation\r\nDual handles: molded-in & hinged handles\r\nPress & pull latches - Molded in tie-downs\r\nCorrosion resistant stainless steel hardware\r\n      ', '', 100, 280, 326, 5, 'uploaded_photos/product43.jpg', 'Available', 'AinurAizhan', '7760069339'),
(91, 'TIGER/PHOENIX TUB & SHOWER DIVERTER\r\n\r\n3-3/8\" inlet centers\r\nComes with concealed shower diverter\r\nChromed lever handles\r\nBag packed', '', 100, 60, 75, 5, 'uploaded_photos/product45.jpg', 'Available', 'AinurAizhan', '7760069339'),
(92, 'DOWNHILL BLITZER ARROW SLED\r\n\r\nFeatures separate seat & feet compartments for added agility\r\nDurable molded grip handles\r\nMade with heavy-duty, flexible slick coated plastic\r\nCoated with Slippery Racer\'s IceVex cold-resistant treatment\r\n', '', 100, 11, 17, 5, 'uploaded_photos/product46.jpg', 'Available', 'AinurAizhan', '7760069339'),
(93, 'PROGRIP 8-N-1 GLAZIER TOOL\r\n\r\nStiff tool with hammer cap\r\nUse as the following tools:\r\nScraper, roller squeegee, spreader & crack cleaner\r\nCan opener, utility knife, nail setter & puller\r\nSoft grip handle\r\nHigh-quality carbon steel blade\r\n          ', '', 100, 6, 8, 6, 'uploaded_photos/product47.jpg', 'Available', 'AinurAizhan', '7760069339'),
(94, 'PLASTIC SCRATCH AWL\r\n\r\nAwl has clear plastic handle, and forged steel 3-inch long blade.\r\n\r\n\r\nDrop forged 3\" steel blade goes through handle\r\nShock resistant durable plastic handle', '', 1000, 2, 3, 6, 'uploaded_photos/product48.jpg', 'Available', 'AinurAizhan', '7760069339'),
(95, 'GLASS PLIERS\r\n\r\n\r\nPliers easily convert from a nipping tool to a running (break-out) tool using interchangeable jaws.\r\nLightweight nipping pliers\r\nBoth running and nipping pliers\r\nInterchangeable pliers\r\n3/4\" jaw opening, length 6\"\r\n', '', 100, 10, 15, 6, 'uploaded_photos/product49.jpg', 'Available', 'AinurAizhan', '7760069339'),
(96, '3 LB. WOOD CROSS PEIN HAMMER\r\n\r\nUsed to strike, shape & bend unhardened metal\r\nMay also be used to shape block, brick & stone\r\nMade from genuine American hickory\r\n16\" handle length', '', 100, 10, 15, 6, 'uploaded_photos/product50.jpg', 'Available', 'AinurAizhan', '7760069339'),
(97, 'FATMAX®1 0\" REVERSE HANDLE BACKSAW\r\n\r\nSpring-loaded pin allows blade to reverse quickly for left or right hand application\r\nReversible handle provides improved access in close quarters where needed\r\n\r\n                      ', '', 100, 15, 20, 6, 'uploaded_photos/product51.jpg', 'Available', 'AinurAizhan', '7760069339'),
(98, '9-1/2\" FIXED BLADE KNIFE\r\n\r\nPolished leather handle\r\nLeather sheath\r\nMirror-polished concave ground 5\" blade\r\n9-1/2\" overall, 5.4 oz.                      ', '', 100, 60, 75, 6, 'uploaded_photos/product52.jpg', 'Available', 'AinurAizhan', '7760069339'),
(99, 'MARGIN FLOAT\r\n\r\nPro series\r\nErgonomic handle\r\nGum rubber face bonded to beveled rubber pad for getting into hard to reach areas\r\nBlade size: 2 in x 4 in', '', 100, 4, 6, 6, 'uploaded_photos/product53.jpg', 'Available', 'AinurAizhan', '7760069339'),
(100, 'QUICK CONNECT MINI-SPLIT\r\n\r\n12,000 BTU, built for single-zone areas-500sqft\r\nHigh-wall indoor air handler,mounting bracket, outdoor condenser, cable & line set\r\nAHRI certified & Energy Star rated, 22.0 SEER\r\n       ', '', 50, 600, 900, 7, 'uploaded_photos/product54.jpg', 'Available', 'AinurAizhan', '7760069339'),
(101, 'QUICK CONNECT MINI-SPLIT\r\n\r\n12,000 BTU, built for single-zone areas-500sqft\r\nHigh-wall indoor air handler,mounting bracket, outdoor condenser, cable & line set\r\nAHRI certified & Energy Star rated, 22.0 SEER\r\n', '', 100, 30, 40, 7, 'uploaded_photos/product55.jpg', 'Available', 'AinurAizhan', '7760069339'),
(102, 'FILTRETE™ ALLERGEN REDUCTION 4\" FILTER\r\n\r\nAllergen reduction filter for whole house air cleaners\r\nCaptures 97% of large airborne allergens such as pollen mold spores & dust mite debris\r\nRobust frame construction enhances quality\r\nLasts up to 12 months', '', 100, 80, 100, 7, 'uploaded_photos/product56.jpg', 'Available', 'AinurAizhan', '7760069339'),
(103, '0/12-6/12 SQUARE CEILING SUPPORT BOX\r\n\r\nDuraPlus all-fuel - use with flat, vaulted or cathedral ceilings\r\n11\" tall square support box\r\nFor 0/12-6/12 DVL ceiling pitch\r\nSupports up to 35 ft. of DuraPlus Chimney\r\n        ', '', 100, 80, 95, 7, 'uploaded_photos/product57.jpg', 'Available', 'AinurAizhan', '7760069339'),
(104, 'LAMBRO FLEXIBLE ALUMINUM FOIL DUCTING\r\n\r\nAluminum foil ducting for venting HVAC or dryer venting\r\nPacked bulk', '', 100, 7, 10, 7, 'uploaded_photos/product58.jpg', 'Available', 'AinurAizhan', '7760069339'),
(105, 'CEILING DIFFUSER\r\n\r\nOverlapping rings stepped down for efficient, draft-free diffusion. Outer ring design resists ceiling smudging. Center cone slotted for optional chain operation. All-steel construction. Use with round damper 1800.\r\n', '', 100, 7, 9, 7, 'uploaded_photos/product59.jpg', 'Available', 'AinurAizhan', '7760069339'),
(106, 'CEDAR PLANKING\r\n\r\nCreate safe storage for your fine garments with CedarSafe 100% Aromatic Cedar Planks. \r\n\r\n             ', '', 100, 25, 32, 8, 'uploaded_photos/product60.jpg', 'Available', 'AinurAizhan', '7760069339'),
(107, 'N346-206  SELF-CLOSING METAL GATE HINGES\r\n\r\n2-pack of Tru-Close gate hinges for metal gates\r\n\r\n                      ', '', 100, 25, 33, 8, 'uploaded_photos/product61.jpg', 'Available', 'AinurAizhan', '7760069339'),
(108, '2\" B & W VINYL NUMBERS SET\r\n\r\nSet of 60 self-adhesive vinyl letters\r\nA thru Z, comma and period\r\n1-3/4\" letter on 2\" panel\r\n', '', 100, 1.5, 2.3, 8, 'uploaded_photos/product62.jpg', 'Available', 'AinurAizhan', '7760069339'),
(109, '1440 DRIVE-IN BALL CATCH\r\n\r\nFor use in wood, metal closet or cabinet doors\r\nAdjustable tension\r\nIncludes fasteners for quick & easy installation\r\nMade of steel material\r\n1 per package', '', 100, 2, 3, 8, 'uploaded_photos/product63.jpg', 'Available', 'AinurAizhan', '7760069339'),
(110, 'KEYED DRAWER LOCKS\r\n\r\n3/4 bore\r\nKeyed Different\r\nDesigned as a new or replacement lock for 3/4\" drawers used to store medicine, liquor, guns, etc.\r\nDie-cast zinc body\r\nBar, face plate and parts made of steel', '', 100, 2, 2.75, 8, 'uploaded_photos/product64.jpg', 'Available', 'AinurAizhan', '7760069339'),
(111, 'SOLID BRASS WIRE CABINET PULL\r\n\r\n3\" center - wire style cabinet pull\r\nComplete with screws\r\nSolid brass', '', 100, 1, 1.6, 8, 'uploaded_photos/product65.jpg', 'Available', 'AinurAizhan', '7760069339'),
(112, '3-PC. PRO-MAXX(R) PAINT BRUSH SET\r\n\r\n3-piece paint brush set of Pro-Maxx(R) brushes\r\nMade of premium blended polyester bristles\r\nNatural wood handles\r\nHandcrafted for all paints', '', 1000, 7, 9, 9, 'uploaded_photos/product66.jpg', 'Available', 'AinurAizhan', '7760069339'),
(113, 'ROKREZ EPOXY GARAGE FLOOR COATING KIT\r\n\r\nA ready-to-use 2-part, 100% solid self-leveling industrial strength epoxy floor coating\r\nExcellent durability, chemical and stain resistance for protection to concrete surfaces\r\n           ', '', 100, 180, 225, 9, 'uploaded_photos/product67.jpg', 'Available', 'AinurAizhan', '7760069339'),
(114, 'WHIZZFLOCK ROLLER\r\n\r\nFlocked ultra-low density painting sponge\r\nExcellent w/enamels, varnishes & epoxies\r\nIdeal where a smooth finish is desired\r\nBest for fast dry waterborne coatings and all paints', '', 100, 5, 7, 9, 'uploaded_photos/product68.jpg', 'Available', 'AinurAizhan', '7760069339'),
(115, 'WOOD GRAINING TOOL\r\n\r\nThis innovative tool produces the realistic grains and patters found in real wood.  ', '', 100, 4, 7, 9, 'uploaded_photos/product69.jpg', 'Available', 'AinurAizhan', '7760069339'),
(116, '# 12059 DAP \"1012\" GLAZING COMPOUND\r\n\r\n\r\n\r\nDAP ‘1012’  Glazing is a professional quality glazing compound that may be used for face glazing interior or exterior aluminum, primed steel, stainless steel and bonderized galvanized steel.', '', 100, 25, 30, 9, 'uploaded_photos/product70.jpg', 'Available', 'AinurAizhan', '7760069339'),
(117, 'INTERIOR/EXTERIOR VINYL  SPACKLING PASTE ~ 1/2 PINT\r\n\r\nCrawford’s Free Spackling Paste is a multipurpose, premixed, ready-to-use vinyl patching compound for many interior and exterior surfaces. ', '', 1000, 3, 5, 9, 'uploaded_photos/product71.jpg', 'Available', 'AinurAizhan', '7760069339');

-- --------------------------------------------------------

--
-- Структура таблицы `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(1, 201737, 10, 107.1, 1, 0),
(2, 201738, 0, 199, 0, 0),
(3, 201739, 0, 289, 0, 0),
(4, 201740, 0, 149, 0, 0),
(5, 201741, 0, 89, 0, 0),
(6, 201742, 0, 287, 0, 0),
(7, 0, 0, 24.9, 0, 0),
(16, 202143, 0, 41.9, 0, 0),
(17, 202144, 0, 24.5, 0, 0),
(18, 202145, 0, 110.9, 0, 0),
(19, 46, 0, 13.5, 0, 0),
(20, 47, 0, 41.5, 0, 0),
(21, 48, 0, 23.58, 0, 0),
(22, 49, 0, 112.6, 0, 0),
(23, 50, 0, 25, 0, 0),
(24, 51, 0, 14.62, 0, 0),
(25, 52, 0, 44.3, 0, 0),
(26, 53, 0, 73.65, 0, 0),
(27, 54, 0, 16.54, 0, 0),
(28, 55, 0, 3.5, 0, 0),
(29, 56, 0, 10.4, 0, 0),
(30, 57, 0, 130.56, 0, 0),
(31, 58, 0, 33, 0, 0),
(35, 62, 0, 15, 0, 0),
(36, 63, 0, 44, 0, 0),
(37, 64, 0, 300, 0, 0),
(38, 65, 0, 9, 0, 0),
(39, 66, 0, 70, 0, 0),
(40, 67, 0, 16, 0, 0),
(41, 68, 0, 14, 0, 0),
(42, 69, 0, 8, 0, 0),
(43, 70, 0, 22, 0, 0),
(44, 71, 0, 16, 0, 0),
(45, 72, 0, 8, 0, 0),
(46, 73, 0, 50, 0, 0),
(47, 74, 0, 6, 0, 0),
(48, 75, 0, 93, 0, 0),
(49, 76, 0, 51, 0, 0),
(51, 78, 0, 124.3, 0, 0),
(52, 79, 0, 20, 0, 0),
(53, 80, 0, 28, 0, 0),
(54, 81, 0, 57.3, 0, 0),
(55, 82, 0, 44, 0, 0),
(56, 83, 0, 20, 0, 0),
(57, 84, 0, 156, 0, 0),
(58, 85, 0, 70, 0, 0),
(59, 86, 0, 43, 0, 0),
(60, 87, 0, 7, 0, 0),
(61, 88, 0, 10, 0, 0),
(62, 89, 0, 33, 0, 0),
(63, 90, 0, 326, 0, 0),
(64, 91, 0, 75, 0, 0),
(65, 92, 0, 17, 0, 0),
(66, 93, 0, 8, 0, 0),
(67, 94, 0, 3, 0, 0),
(68, 95, 0, 15, 0, 0),
(69, 96, 0, 15, 0, 0),
(70, 97, 0, 20, 0, 0),
(71, 98, 0, 75, 0, 0),
(72, 99, 0, 6, 0, 0),
(73, 100, 0, 900, 0, 0),
(74, 101, 0, 40, 0, 0),
(75, 102, 0, 100, 0, 0),
(76, 103, 0, 95, 0, 0),
(77, 104, 0, 10, 0, 0),
(78, 105, 0, 9, 0, 0),
(79, 106, 0, 32, 0, 0),
(80, 107, 0, 33, 0, 0),
(81, 108, 0, 2.3, 0, 0),
(82, 109, 0, 3, 0, 0),
(83, 110, 0, 2.75, 0, 0),
(84, 111, 0, 1.6, 0, 0),
(85, 112, 0, 9, 0, 0),
(86, 113, 0, 225, 0, 0),
(87, 114, 0, 7, 0, 0),
(88, 115, 0, 7, 0, 0),
(89, 116, 0, 30, 0, 0),
(90, 117, 0, 5, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'Zhezkazgan', 'City', 50),
(2, 'Almaty', 'South Capital City', 70),
(3, 'Nur-Sultan', 'Capital City', 40);

-- --------------------------------------------------------

--
-- Структура таблицы `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(100, 'Admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/photo_2020-05-02_15-30-59.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Индексы таблицы `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Индексы таблицы `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Индексы таблицы `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Индексы таблицы `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Индексы таблицы `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Индексы таблицы `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Индексы таблицы `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Индексы таблицы `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Индексы таблицы `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Индексы таблицы `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Индексы таблицы `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT для таблицы `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT для таблицы `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
