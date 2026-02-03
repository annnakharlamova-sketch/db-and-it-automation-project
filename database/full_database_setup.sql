CREATE CACHED TABLE "k_Buyers"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_Surname" VARCHAR(100),"f_Name" VARCHAR(100),"f_Patronimyc" VARCHAR(100),"f_BirthDate" DATE,"f_PasportInfo" NUMERIC(10))
CREATE CACHED TABLE "k_PaymentOrders"("f_Key" NUMERIC(10) NOT NULL PRIMARY KEY,"f_DocumentNumber" NUMERIC(19),"f_DocumentDate" DATE,"f_SupplierKey" NUMERIC(10),"f_BuyerKey" NUMERIC(10),"f_Amount" INTEGER,"f_Crediting" BOOLEAN,"f_TypesOfCashFlow" VARCHAR(100),"f_Banks" VARCHAR(10))
CREATE CACHED TABLE "k_ProductDocuments"("f_Key" NUMERIC(10) NOT NULL PRIMARY KEY,"f_Products" VARCHAR(100),"f_DateOfIssue" DATE,"f_DocumentNumber" VARCHAR(100),"f_Amount" NUMERIC(100),"f_Warehouseskey" NUMERIC(10),"f_YearOfIssue" NUMERIC(100))
CREATE CACHED TABLE "k_TypesOfCashFlow"("f_TypesOfCashFlow" VARCHAR(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_Banks"("f_Banks" VARCHAR(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_TransferLocation"("f_TransferLocation" VARCHAR(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_Cheque"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_TotalPrice" NUMERIC(19),"f_Date" DATE,"f_Bank" VARCHAR(100),"f_SupplierKey" NUMERIC(100),"f_TransferLocation" VARCHAR(100),"f_InsuranceKey" NUMERIC(100),"f_ServiceAndSparePartsSumKey" NUMERIC(100),"f_TrailerKey" NUMERIC(100),"f_BuyerKey" NUMERIC(100))
CREATE CACHED TABLE "k_Supplier"("f_Key" NUMERIC(10) NOT NULL PRIMARY KEY,"f_CompanyName" VARCHAR(100),"f_TaxID" NUMERIC(100))
CREATE CACHED TABLE "k_ImplimentationDocuments"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_DocumentNumber" BIGINT,"f_DocumentDate" DATE,"f_BuyerKey" NUMERIC(100),"f_ProductsKey" NUMERIC(100),"f_Sum" NUMERIC(100))
CREATE CACHED TABLE "k_MaterialTypes"("f_MaterialTypes" VARCHAR(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_ImplementationInfo"("f_DocumentKey" NUMERIC(100) NOT NULL,"f_ProductKey" NUMERIC(100) NOT NULL PRIMARY KEY,"f_Amount" NUMERIC(100))
CREATE CACHED TABLE "k_ProductDocumentsInfo"("f_DocumentKey" NUMERIC(100) NOT NULL,"f_ProductKey" NUMERIC(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_Materials"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_MaterialTypeKey" VARCHAR(100),"f_SupplierOfMaterials" VARCHAR(100))
CREATE CACHED TABLE "k_Products"("f_Key" NUMERIC(10) NOT NULL PRIMARY KEY,"f_ProductName" VARCHAR(100),"f_ProductType" VARCHAR(100),"f_Weight" NUMERIC(100),"f_EngineKey" NUMERIC(100),"f_MaxSpeed" NUMERIC(100),"f_Transmission" VARCHAR(100),"f_TireSize" VARCHAR(100),"f_Price" NUMERIC(100))
CREATE CACHED TABLE "k_BillsOfMaterialsInfo"("f_BillsOfMaterialsKey" NUMERIC(100) NOT NULL PRIMARY KEY,"f_MaterialsKey" NUMERIC(100) NOT NULL,"f_Amount" NUMERIC(10))
CREATE CACHED TABLE "k_AutomobileTypes"("f_AutomobileType" VARCHAR(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_Engines"("f_Key" NUMERIC(10) NOT NULL PRIMARY KEY,"f_Model" VARCHAR(100),"f_Type" VARCHAR(100),"f_Capacity" NUMERIC(17),"f_EnginePower" NUMERIC(100))
CREATE CACHED TABLE "k_BillsOfMaterials"("f_WarehouseKey" NUMERIC(100) NOT NULL PRIMARY KEY,"f_BillsOfMaterialsKey" NUMERIC(100),"f_QuantityAtWarehouse" NUMERIC(100))
CREATE CACHED TABLE "k_Warehouses"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_Name" VARCHAR(100),"f_Adress" VARCHAR(100))
CREATE CACHED TABLE "k_Insurance"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_StartData" DATE,"f_EndData" DATE,"f_BuyerKey" NUMERIC(100),"f_ProductKey" NUMERIC(100),"f_InsuranceCompany" VARCHAR(100),"f_Sum" NUMERIC(100))
CREATE CACHED TABLE "k_InsuranceCompany"("f_InsuranceCompany" VARCHAR(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_ServiceAndSpareParts"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_DiscountKey" NUMERIC(100),"f_Warranty" VARCHAR(100),"f_Accessories" VARCHAR(100),"f_SpareParts" VARCHAR(100),"f_Sum" NUMERIC(19))
CREATE CACHED TABLE "k_Discount"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_Type" VARCHAR(100),"f_Size" NUMERIC(10))
CREATE CACHED TABLE "k_DiscountType"("f_Type" VARCHAR(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_DiscountSize"("f_Size" NUMERIC(10) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_WarrantyPrograms"("f_Programs" VARCHAR(100) NOT NULL PRIMARY KEY)
CREATE CACHED TABLE "k_TypesOfAccessories"("f_Accessory" VARCHAR(100) NOT NULL PRIMARY KEY,"f_Price" NUMERIC(100))
CREATE CACHED TABLE "k_Trailer"("f_Key" NUMERIC(100) NOT NULL PRIMARY KEY,"f_Model" VARCHAR(100),"f_LoadCapacity" NUMERIC(5),"f_TypeOfTrailer" VARCHAR(100),"f_Price" NUMERIC(100))
CREATE CACHED TABLE "k_SpareParts"("f_SpareParts" VARCHAR(100) NOT NULL PRIMARY KEY,"f_Price" NUMERIC(100),"f_SupplierKey" NUMERIC(100))
CREATE CACHED TABLE "k_TypeOfTrailer"("f_TypeOfTrailer" VARCHAR(100) NOT NULL PRIMARY KEY)
ALTER TABLE "k_PaymentOrders" ADD CONSTRAINT SYS_FK_213 FOREIGN KEY("f_SupplierKey") REFERENCES "k_Supplier"("f_Key")
ALTER TABLE "k_PaymentOrders" ADD CONSTRAINT SYS_FK_494 FOREIGN KEY("f_Banks") REFERENCES "k_Banks"("f_Banks")
ALTER TABLE "k_PaymentOrders" ADD CONSTRAINT SYS_FK_497 FOREIGN KEY("f_TypesOfCashFlow") REFERENCES "k_TypesOfCashFlow"("f_TypesOfCashFlow")
ALTER TABLE "k_PaymentOrders" ADD CONSTRAINT SYS_FK_412 FOREIGN KEY("f_BuyerKey") REFERENCES "k_Buyers"("f_Key")
ALTER TABLE "k_Cheque" ADD CONSTRAINT SYS_FK_216 FOREIGN KEY("f_SupplierKey") REFERENCES "k_Supplier"("f_Key")
ALTER TABLE "k_Cheque" ADD CONSTRAINT SYS_FK_376 FOREIGN KEY("f_InsuranceKey") REFERENCES "k_Insurance"("f_Key")
ALTER TABLE "k_Cheque" ADD CONSTRAINT SYS_FK_435 FOREIGN KEY("f_TrailerKey") REFERENCES "k_Trailer"("f_Key")
ALTER TABLE "k_Cheque" ADD CONSTRAINT SYS_FK_446 FOREIGN KEY("f_ServiceAndSparePartsSumKey") REFERENCES "k_ServiceAndSpareParts"("f_Key")
ALTER TABLE "k_Cheque" ADD CONSTRAINT SYS_FK_119 FOREIGN KEY("f_Bank") REFERENCES "k_Banks"("f_Banks")
ALTER TABLE "k_Cheque" ADD CONSTRAINT SYS_FK_130 FOREIGN KEY("f_TransferLocation") REFERENCES "k_TransferLocation"("f_TransferLocation")
ALTER TABLE "k_Cheque" ADD CONSTRAINT SYS_FK_534 FOREIGN KEY("f_BuyerKey") REFERENCES "k_Buyers"("f_Key")
ALTER TABLE "k_Products" ADD CONSTRAINT SYS_FK_166 FOREIGN KEY("f_ProductType") REFERENCES "k_AutomobileTypes"("f_AutomobileType")
ALTER TABLE "k_Products" ADD CONSTRAINT SYS_FK_264 FOREIGN KEY("f_EngineKey") REFERENCES "k_Engines"("f_Key")
ALTER TABLE "k_ProductDocuments" ADD CONSTRAINT SYS_FK_284 FOREIGN KEY("f_Warehouseskey") REFERENCES "k_Warehouses"("f_Key")
ALTER TABLE "k_ProductDocumentsInfo" ADD CONSTRAINT SYS_FK_258 FOREIGN KEY("f_ProductKey") REFERENCES "k_Products"("f_Key")
ALTER TABLE "k_ProductDocumentsInfo" ADD CONSTRAINT SYS_FK_241 FOREIGN KEY("f_DocumentKey") REFERENCES "k_ProductDocuments"("f_Key")
ALTER TABLE "k_Trailer" ADD CONSTRAINT SYS_FK_382 FOREIGN KEY("f_TypeOfTrailer") REFERENCES ""k_TypeOfTrailer""("f_TypeOfTrailer")
ALTER TABLE "k_Insurance" ADD CONSTRAINT SYS_FK_404 FOREIGN KEY("f_InsuranceCompany") REFERENCES "k_InsuranceCompany"("f_InsuranceCompany")
ALTER TABLE "k_Insurance" ADD CONSTRAINT SYS_FK_500 FOREIGN KEY("f_BuyerKey") REFERENCES "k_Buyers"("f_Key")
ALTER TABLE "k_Insurance" ADD CONSTRAINT SYS_FK_503 FOREIGN KEY("f_ProductKey") REFERENCES "k_Products"("f_Key")
ALTER TABLE "k_ImplementationInfo" ADD CONSTRAINT SYS_FK_249 FOREIGN KEY("f_ProductKey") REFERENCES "k_Products"("f_Key")
ALTER TABLE "k_ImplementationInfo" ADD CONSTRAINT SYS_FK_234 FOREIGN KEY("f_DocumentKey") REFERENCES "k_ImplimentationDocuments"("f_Key")
ALTER TABLE "k_ImplimentationDocuments" ADD CONSTRAINT SYS_FK_506 FOREIGN KEY("f_ProductsKey") REFERENCES "k_Products"("f_Key")
ALTER TABLE "k_ImplimentationDocuments" ADD CONSTRAINT SYS_FK_223 FOREIGN KEY("f_BuyerKey") REFERENCES "k_Buyers"("f_Key")
ALTER TABLE "k_Materials" ADD CONSTRAINT SYS_FK_244 FOREIGN KEY("f_MaterialTypeKey") REFERENCES "k_MaterialTypes"("f_MaterialTypes")
ALTER TABLE "k_BillsOfMaterialsInfo" ADD CONSTRAINT SYS_FK_281 FOREIGN KEY("f_WarehouseKey") REFERENCES "k_Warehouses"("f_Key")
ALTER TABLE "k_BillsOfMaterialsInfo" ADD CONSTRAINT SYS_FK_261 FOREIGN KEY("f_MaterialsKey") REFERENCES "k_Materials"("f_Key")
ALTER TABLE "k_BillsOfMaterials" ADD CONSTRAINT SYS_FK_531 FOREIGN KEY("f_BillsOfMaterialsKey") REFERENCES "k_BillsOfMaterialsInfo"("f_BillsOfMaterialsKey")
ALTER TABLE "k_ServiceAndSpareParts" ADD CONSTRAINT SYS_FK_335 FOREIGN KEY("f_Warranty") REFERENCES "k_WarrantyPrograms"("f_Programs")
ALTER TABLE "k_ServiceAndSpareParts" ADD CONSTRAINT SYS_FK_344 FOREIGN KEY("f_DiscountKey") REFERENCES "k_Discount"("f_Key")
ALTER TABLE "k_ServiceAndSpareParts" ADD CONSTRAINT SYS_FK_357 FOREIGN KEY("f_Accessories") REFERENCES "k_TypesOfAccessories"("f_Accessory")
ALTER TABLE "k_ServiceAndSpareParts" ADD CONSTRAINT SYS_FK_385 FOREIGN KEY("f_SpareParts") REFERENCES ""k_SpareParts""("f_SpareParts")
ALTER TABLE "k_Discount" ADD CONSTRAINT SYS_FK_350 FOREIGN KEY("f_Type") REFERENCES "k_DiscountType"("f_Type")
ALTER TABLE "k_Discount" ADD CONSTRAINT SYS_FK_354 FOREIGN KEY("f_Size") REFERENCES "k_DiscountSize"("f_Size")
ALTER TABLE ""k_SpareParts"" ADDCONSTRAINT SYS_FK_668 FOREIGN KEY("f_SupplierKey") REFERENCES "k_Supplier"("f_Key")
INSERT INTO "k_Buyers" VALUES (1, 'Лагунов', 'Максим', 'Игоревич', '1990-04-12', 1548350868);
INSERT INTO "k_Buyers" VALUES (2, 'Иванова', 'Екатерина', 'Романовна', '2001-09-30', 5461646416);
INSERT INTO "k_Buyers" VALUES (3, 'Матвиенко', 'Дмитрий', 'Георгиевич', '1998-08-08', 4651651465);
INSERT INTO "k_Buyers" VALUES (4, 'Лихобабина', 'Дарья', 'Олеговна', '1980-03-17', 8794652165);
INSERT INTO "k_Buyers" VALUES (5, 'Хворов', 'Валерий', 'Дмитриевич', '1999-12-21', 7946123456);
INSERT INTO "k_Buyers" VALUES (6, 'Тихонова', 'Анна', 'Степановна', '1988-05-01', 1234567980);
INSERT INTO "k_Buyers" VALUES (7, 'Пачин', 'Валентин', 'Андреевич', '2001-02-02', 1020304050);
INSERT INTO "k_Buyers" VALUES (8, 'Стрельникова', 'Мария', 'Сергеевна', '1981-06-16', 7896532104);
INSERT INTO "k_Buyers" VALUES (9, 'Радаева', 'София', 'Ивановна', '1969-07-24', 5482365465);
INSERT INTO "k_Buyers" VALUES (10, 'Коротаев', 'Альберт', 'Вячеславович', '2005-10-12', 4695818969);
INSERT INTO "k_PaymentOrders" VALUES (1, 33631651, '2010-01-07', 6, 10, 3, true, 'Оплата поставщику', 'Альфа-банк');
INSERT INTO "k_PaymentOrders" VALUES (2, 21163565, '2004-10-01', 1, 5, 4, false, 'Кредит', 'Почта банк');
INSERT INTO "k_PaymentOrders" VALUES (3, 54216472, '2015-08-26', 9, 9, 1, true, 'Оплата покупателя', 'Альфа-банк');
INSERT INTO "k_PaymentOrders" VALUES (4, 79169165, '2015-03-01', 8, 3, 2, false, 'Займ', 'Тинькофф');
INSERT INTO "k_PaymentOrders" VALUES (5, 86165546, '2014-02-08', 10, 1, 3, true, 'Оплата покупателя', 'ВТБ');
INSERT INTO "k_PaymentOrders" VALUES (6, 12155555, '2017-01-14', 2, 8, 5, false, 'Налог', 'Росбанк');
INSERT INTO "k_PaymentOrders" VALUES (7, 45153161, '2016-11-19', 5, 2, 4, true, 'Оплата покупателя', 'Открытие');
INSERT INTO "k_PaymentOrders" VALUES (8, 62164113, '2019-02-03', 3, 4, 1, true, 'Перечисление зарплаты', 'ВТБ');
INSERT INTO "k_PaymentOrders" VALUES (9, 52164313, '2002-09-04', 4, 6, 2, true, 'Оплата покупателя', 'Росбанк');
INSERT INTO "k_PaymentOrders" VALUES (10, 44165165, '2009-03-23', 7, 7, 1, true, 'Оплата покупателя', 'ВТБ');
INSERT INTO "k_ProductDocuments" VALUES (1, 'Lada Largus', '2016-05-17', '77МН059145', 19, 7, 2016);
INSERT INTO "k_ProductDocuments" VALUES (2, 'Lada Granta', '2018-11-29', '25УЛ513698', 30, 6, 2018);
INSERT INTO "k_ProductDocuments" VALUES (3, 'Lada Vesta', '2022-09-25', '50ОН055280', 25, 3, 2022);
INSERT INTO "k_ProductDocuments" VALUES (4, 'УАЗ Patriot', '2019-12-26', '61НО324062', 32, 2, 2019);
INSERT INTO "k_ProductDocuments" VALUES (5, 'BMW 4 Series', '2023-06-06', '63ОЕ399200', 42, 4, 2023);
INSERT INTO "k_ProductDocuments" VALUES (6, 'Audi RS5', '2022-03-21', '24МХ148543', 18, 5, 2022);
INSERT INTO "k_ProductDocuments" VALUES (7, 'Toyota Vellfire', '2011-11-12', '25ТВ8449609', 26, 9, 2011);
INSERT INTO "k_ProductDocuments" VALUES (8, 'УАЗ "Профи"', '2020-12-07', '86КМ042752', 40, 8, 2020);
INSERT INTO "k_ProductDocuments" VALUES (9, 'УАЗ "PickUp"', '2021-08-20', '02НМ005308', 38, 10, 2021);
INSERT INTO "k_ProductDocuments" VALUES (10, 'Lada Kalina', '2004-11-18', '25МА019989', 27, 9, 2004);
INSERT INTO "k_TypesOfCashFlow" VALUES (1, 'Займ');
INSERT INTO "k_TypesOfCashFlow" VALUES (2, 'Кредит');
INSERT INTO "k_TypesOfCashFlow" VALUES (3, 'Налог');
INSERT INTO "k_TypesOfCashFlow" VALUES (4, 'Оплата покупателя');
INSERT INTO "k_TypesOfCashFlow" VALUES (5, 'Оплата поставщику');
INSERT INTO "k_TypesOfCashFlow" VALUES (6, 'Перечисление зарплаты');
INSERT INTO "k_Banks" VALUES (1, 'Home credit bank');
INSERT INTO "k_Banks" VALUES (2, 'Альфа-банк');
INSERT INTO "k_Banks" VALUES (3, 'ВТБ');
INSERT INTO "k_Banks" VALUES (4, 'Открытие');
INSERT INTO "k_Banks" VALUES (5, 'Почта банк');
INSERT INTO "k_Banks" VALUES (6, 'Ренессанс');
INSERT INTO "k_Banks" VALUES (7, 'Росбанк');
INSERT INTO "k_Banks" VALUES (8, 'РоссельхозБанк');
INSERT INTO "k_Banks" VALUES (9, 'Тинькофф');
INSERT INTO "k_TransferLocation" VALUES (1, 'Автозавод');
INSERT INTO "k_TransferLocation" VALUES (2, 'Главный офис');
INSERT INTO "k_TransferLocation" VALUES (3, 'Диллерский центр');
INSERT INTO "k_TransferLocation" VALUES (4, 'Парковка');
INSERT INTO "k_TransferLocation" VALUES (5, 'Склад');
INSERT INTO "k_Cheque" VALUES (1, 128850, '2023-05-06', 'Альфа-банк', 2, 'Автозавод', 1, 2, 5, 8);
INSERT INTO "k_Cheque" VALUES (2, 69500, '2024-01-03', 'Росбанк', 4, 'Главный офис', 2, 3, 9, 6);
INSERT INTO "k_Cheque" VALUES (3, 156200, '2023-12-10', 'Тинькофф', 9, 'Склад', 3, 10, 10, 9);
INSERT INTO "k_Cheque" VALUES (4, 132750, '2023-06-24', 'Home credit bank', 7, 'Автозавод', 4, 7, 7, 7);
INSERT INTO "k_Cheque" VALUES (5, 105400, '2023-10-14', 'Альфа-банк', 8, 'Склад', 5, 9, 1, 3);
INSERT INTO "k_Cheque" VALUES (6, 112400, '2023-07-06', 'ВТБ', 6, 'Диллерский центр', 6, 4, 4, 10);
INSERT INTO "k_Cheque" VALUES (7, 94050, '2024-02-25', 'Ренессанс', 3, 'Парковка', 7, 1, 3, 4);
INSERT INTO "k_Cheque" VALUES (8, 93750, '2023-08-03', 'Открытие', 5, 'Диллерский центр', 8, 5, 2, 2);
INSERT INTO "k_Cheque" VALUES (9, 168100, '2023-10-08', 'Почта банк', 1, 'Главный офис', 9, 6, 8, 5);
INSERT INTO "k_Cheque" VALUES (10, 97800, '2023-12-09', 'ВТБ', 10, 'Автозавод', 10, 8, 6, 1);
INSERT INTO "k_Supplier" VALUES (1, 'ООО "Авторитэйл М"', 7714461708);
INSERT INTO "k_Supplier" VALUES (2, 'ООО "АВТОМАШ М"', 7724927900);
INSERT INTO "k_Supplier" VALUES (3, 'ООО "ГАЗКОМТРАНС"', 7708303397);
INSERT INTO "k_Supplier" VALUES (4, 'ООО "ТАУЭР ЛТД"', 5034027232);
INSERT INTO "k_Supplier" VALUES (5, 'ООО "ВЛАДАВТО"', 3327828422);
INSERT INTO "k_Supplier" VALUES (6, 'ОО "ГК "ВИСТА"', 7107543027);
INSERT INTO "k_Supplier" VALUES (7, 'ООО "АВТОТЕХ"', 7838472170);
INSERT INTO "k_Supplier" VALUES (8, 'ООО "АВТОГАЗСЕРВИС-62"', 6229090326);
INSERT INTO "k_Supplier" VALUES (9, 'ООО "РУСАВТО"', 7721581650);
INSERT INTO "k_Supplier" VALUES (10, 'ООО "ПРЕМЬЕР-АВТО"', 7724339721);
INSERT INTO "k_ImplimentationDocuments" VALUES(1,452145,'2023-05-06',8,2,955900);
INSERT INTO "k_ImplimentationDocuments" VALUES(2,101164,'2024-01-03',6,7,3000000);
INSERT INTO "k_ImplimentationDocuments" VALUES(3,360155,'2023-12-10',9,8,1535000);
INSERT INTO "k_ImplimentationDocuments" VALUES(4,897156,'2023-06-24',7,6,28000000);
INSERT INTO "k_ImplimentationDocuments" VALUES(5,154486,'2023-10-14',3,1,719000);
INSERT INTO "k_ImplimentationDocuments" VALUES(6,211423,'2023-07-06',10,4,5730000);
INSERT INTO "k_ImplimentationDocuments" VALUES(7,900023,'2024-02-25',4,5,8600000);
INSERT INTO "k_ImplimentationDocuments" VALUES(8,873145,'2023-08-03',2,3,10627500);
INSERT INTO "k_ImplimentationDocuments" VALUES(9,366165,'2023-10-08',5,9,1585000);
INSERT INTO "k_ImplimentationDocuments" VALUES(10,470156,'2023-12-09',1,10,2200000);
INSERT INTO "k_MaterialTypes" VALUES (1, 'Алюминиевые сплавы');
INSERT INTO "k_MaterialTypes" VALUES (2, 'Пластмасса');
INSERT INTO "k_MaterialTypes" VALUES (3, 'Сплавы железа');
INSERT INTO "k_MaterialTypes" VALUES (4, 'Стекло');
INSERT INTO "k_ImplementationInfo" VALUES(5,1,1);
INSERT INTO "k_ImplementationInfo" VALUES(1,2,1);
INSERT INTO "k_ImplementationInfo" VALUES(8,3,5);
INSERT INTO "k_ImplementationInfo" VALUES(6,4,3);
INSERT INTO "k_ImplementationInfo" VALUES(7,5,2);
INSERT INTO "k_ImplementationInfo" VALUES(4,6,2);
INSERT INTO "k_ImplementationInfo" VALUES(2,7,1);
INSERT INTO "k_ImplementationInfo" VALUES(3,8,1);
INSERT INTO "k_ImplementationInfo" VALUES(9,9,1);
INSERT INTO "k_ImplementationInfo" VALUES(10,10,2);
INSERT INTO "k_ProductDocumentsInfo" VALUES(1,1);
INSERT INTO "k_ProductDocumentsInfo" VALUES(2,2);
INSERT INTO "k_ProductDocumentsInfo" VALUES(3,3);
INSERT INTO "k_ProductDocumentsInfo" VALUES(4,4);
INSERT INTO "k_ProductDocumentsInfo" VALUES(5,5);
INSERT INTO "k_ProductDocumentsInfo" VALUES(6,6);
INSERT INTO "k_ProductDocumentsInfo" VALUES(7,7);
INSERT INTO "k_ProductDocumentsInfo" VALUES(8,8);
INSERT INTO "k_ProductDocumentsInfo" VALUES(9,9);
INSERT INTO "k_ProductDocumentsInfo" VALUES(10,10);
INSERT INTO "k_Materials" VALUES (1, 'Стекло', 'Стекольный завод "ПикГласс"');
INSERT INTO "k_Materials" VALUES (2, 'Сплавы железа', 'НКП АвиаТехМеталл');
INSERT INTO "k_Materials" VALUES (3, 'Алюминиевые сплавы', 'Современные технологии');
INSERT INTO "k_Materials" VALUES (4, 'Пластмасса', 'Технопласт');
INSERT INTO "k_Products" VALUES (1, 'Lada Largus', 'Универсал', 1450, 4, 160, '4470 x 1756 x 1682 мм', '185/65 R15', 719000);
INSERT INTO "k_Products" VALUES (2, 'Lada Granta', 'Универсал', 1560, 2, 183, '4268 x 1700 x 1500 мм', '185/55/R15', 955900);
INSERT INTO "k_Products" VALUES (3, 'Lada Vesta', 'Седан', 1275, 6, 178, '4445 x 1785 x 1522 мм', '205/50/R17', 2125500);
INSERT INTO "k_Products" VALUES (4, 'УАЗ Patriot', 'Внедорожник', 2100, 7, 150, '4700 х 1953 х 1910 мм', '225/75/R16', 1910000);
INSERT INTO "k_Products" VALUES (5, 'BMW 4 Series', 'Кабриолет', 1845, 8, 250, '4638 х 1825 х 1384 мм', '225/50/R17', 4300000);
INSERT INTO "k_Products" VALUES (6, 'Audi RS5', 'Купе', 2215, 9, 250, '4649 х 1860 х 1366 мм', '265/35/R19', 14000000);
INSERT INTO "k_Products" VALUES (7, 'Toyota Vellfire', 'Минивэн', 2390, 10, 200, '4850 х 1830 х 1890 мм', '215/60/R17', 3000000);
INSERT INTO "k_Products" VALUES (8, 'УАЗ "Профи"', 'Минифургон', 2580, 7, 135, '5940 х 2180 х 2520 мм', '225/75/R16', 1535000);
INSERT INTO "k_Products" VALUES (9, 'УАЗ "PickUp"', 'Пикап', 2125, 7, 140, '5125 х 1915 х 1915 мм', '225/75/R16', 1585000);
INSERT INTO "k_Products" VALUES (10, 'Lada Kalina', 'Хэтчбек', 1555, 1, 160, '3893 х 1700 х 1500 мм', '185/60/R14', 1100000);
INSERT INTO "k_BillsOfMaterialsInfo" VALUES(1,2,689);
INSERT INTO "k_BillsOfMaterialsInfo" VALUES(2,1,1654);
INSERT INTO "k_BillsOfMaterialsInfo" VALUES(3,4,784);
INSERT INTO "k_BillsOfMaterialsInfo" VALUES(4,3,630);
INSERT INTO "k_AutomobileTypes" VALUES (1, 'Внедорожник');
INSERT INTO "k_AutomobileTypes" VALUES (2, 'Кабриолет');
INSERT INTO "k_AutomobileTypes" VALUES (3, 'Купе');
INSERT INTO "k_AutomobileTypes" VALUES (4, 'Минивэн');
INSERT INTO "k_AutomobileTypes" VALUES (5, 'Минифургон');
INSERT INTO "k_AutomobileTypes" VALUES (6, 'Пикап');
INSERT INTO "k_AutomobileTypes" VALUES (7, 'Седан');
INSERT INTO "k_AutomobileTypes" VALUES (8, 'Универсал');
INSERT INTO "k_AutomobileTypes" VALUES (9, 'Хэтчбек');
INSERT INTO "k_Engines" VALUES (1, 'ВАЗ-21126', 'Бензиновый', 4, 96);
INSERT INTO "k_Engines" VALUES (2, 'ВАЗ-11186', 'Бензиновый', 3, 87);
INSERT INTO "k_Engines" VALUES (3, 'ВАЗ-21179', 'Бензиновый', 2, 122);
INSERT INTO "k_Engines" VALUES (4, 'ВАЗ-21128', 'Бензиновый', 3, 98);
INSERT INTO "k_Engines" VALUES (5, 'ВАЗ-21114', 'Бензиновый', 4, 80);
INSERT INTO "k_Engines" VALUES (6, 'ВАЗ-21129', 'Бензиновый', 2, 106);
INSERT INTO "k_Engines" VALUES (7, 'ЗМЗ-409051 ZMZ Pro', 'Бензиновый', 3, 150);
INSERT INTO "k_Engines" VALUES (8, 'B47D20', 'Дизельный', 2, 190);
INSERT INTO "k_Engines" VALUES (9, 'DECA', 'Бензиновый', 3, 450);
INSERT INTO "k_Engines" VALUES (10, 'A25A-FXS', 'Бензиновый', 2, 190);
INSERT INTO "k_BillsOfMaterials" VALUES(1,1,123);
INSERT INTO "k_BillsOfMaterials" VALUES(2,2,628);
INSERT INTO "k_BillsOfMaterials" VALUES(3,3,486);
INSERT INTO "k_BillsOfMaterials" VALUES(4,4,36);
INSERT INTO "k_BillsOfMaterials" VALUES(5,1,153);
INSERT INTO "k_BillsOfMaterials" VALUES(6,2,1026);
INSERT INTO "k_BillsOfMaterials" VALUES(7,3,298);
INSERT INTO "k_BillsOfMaterials" VALUES(8,4,239);
INSERT INTO "k_BillsOfMaterials" VALUES(9,1,413);
INSERT INTO "k_BillsOfMaterials" VALUES(10,4,355);
INSERT INTO "k_Warehouses" VALUES (1, 'Склад 1', 'Ленинградское ш., вл. 16');
INSERT INTO "k_Warehouses" VALUES (2, 'Склад 2', 'Ярославское шоссе, д. 2В, стр.4');
INSERT INTO "k_Warehouses" VALUES (3, 'Склад 3', 'Щёлковское ш., д. 100, корп. 1');
INSERT INTO "k_Warehouses" VALUES (4, 'Склад 4', 'Строгино, ул. Кулакова, вл. 24, корп. 3');
INSERT INTO "k_Warehouses" VALUES (5, 'Склад 5', 'Коммерческий проезд, д.8, к.2');
INSERT INTO "k_Warehouses" VALUES (6, 'Склад 6', 'Московский, МКАД 47 км, д. 11, стр. 1');
INSERT INTO "k_Warehouses" VALUES (7, 'Склад 7', 'Улица Адмирала Корнилова, вл. 3');
INSERT INTO "k_Warehouses" VALUES (8, 'Склад 8', 'Новомещерский проезд, 7а, стр. 1');
INSERT INTO "k_Warehouses" VALUES (9, 'Склад 9', 'Шоссе Западная промзона Энтузиастов, стр. 4');
INSERT INTO "k_Warehouses" VALUES (10, 'Склад 10', 'Улица Маршала Прошлякова, 19');
INSERT INTO "k_Insurance" VALUES (1, '2023-05-06', '2024-05-06', 8, 2, 'Альфа-Страхование', 10550);
INSERT INTO "k_Insurance" VALUES (2, '2024-01-03', '2025-01-03', 6, 7, 'РЕСО-Гарантия', 10000);
INSERT INTO "k_Insurance" VALUES (3, '2023-12-10', '2024-12-10', 9, 8, 'РОСГОССТРАХ', 11500);
INSERT INTO "k_Insurance" VALUES (4, '2023-06-24', '2024-06-24', 7, 6, 'Альфа-Страхование', 10550);
INSERT INTO "k_Insurance" VALUES (5, '2023-10-14', '2024-10-14', 3, 1, 'Тинькофф-Страхование', 11000);
INSERT INTO "k_Insurance" VALUES (6, '2023-07-06', '2024-07-06', 10, 4, 'РЕСО-Гарантия', 10000);
INSERT INTO "k_Insurance" VALUES (7, '2024-02-25', '2025-02-25', 4, 5, 'Альфа-Страхование', 10550);
INSERT INTO "k_Insurance" VALUES (8, '2023-08-03', '2024-08-03', 2, 3, 'Альфа-Страхование', 10550);
INSERT INTO "k_Insurance" VALUES (9, '2023-10-08', '2024-10-08', 5, 9, 'Тинькофф-Страхование', 11000);
INSERT INTO "k_Insurance" VALUES (10, '2023-12-09', '2024-12-09', 1, 10, 'РОСГОССТРАХ', 11500);
INSERT INTO "k_InsuranceCompany" VALUES (1, 'Альфа-Страхование');
INSERT INTO "k_InsuranceCompany" VALUES (2, 'РЕСО-Гарантия');
INSERT INTO "k_InsuranceCompany" VALUES (3, 'РОСГОССТРАХ');
INSERT INTO "k_InsuranceCompany" VALUES (4, 'Тинькофф-Страхование');
INSERT INTO "k_ServiceAndSpareParts" VALUES (1, 2, 'Максимум', 'Аэродинамический бокс на крышу', 'Амортизатор', 17500);
INSERT INTO "k_ServiceAndSpareParts" VALUES (2, 5, 'Оптимум', 'Ковры для салона', 'Колодка тормозная', 3300);
INSERT INTO "k_ServiceAndSpareParts" VALUES (3, 8, 'Эконом', 'Багажник в сборе', 'Компрессор', 4500);
INSERT INTO "k_ServiceAndSpareParts" VALUES (4, 4, 'Эконом', 'Дефлектор капота', 'Клапан', 2400);
INSERT INTO "k_ServiceAndSpareParts" VALUES (5, 3, 'Эконом', 'Ковры для салона', 'Поршень', 3200);
INSERT INTO "k_ServiceAndSpareParts" VALUES (6, 8, 'Максимум', 'Охранная система PANDORA', 'Регулятор', 12100);
INSERT INTO "k_ServiceAndSpareParts" VALUES (7, 4, 'Эконом', 'Солнцезащитная шторка', 'Редуктор', 5200);
INSERT INTO "k_ServiceAndSpareParts" VALUES (8, 2, 'Оптимум', 'Солнцезащитная шторка', 'Диск тормозной', 3300);
INSERT INTO "k_ServiceAndSpareParts" VALUES (9, 1, 'Эконом', 'Ковры для салона', 'Фильтр', 2400);
INSERT INTO "k_ServiceAndSpareParts" VALUES (10, 9, 'Оптимум', 'Багажник в сборе', 'Рычаг', 4700);
INSERT INTO "k_Discount" VALUES (1, 'Временная', 3);
INSERT INTO "k_Discount" VALUES (2, 'Временная', 25);
INSERT INTO "k_Discount" VALUES (3, 'Накопительная', 5);
INSERT INTO "k_Discount" VALUES (4, 'Накопительная', 3);
INSERT INTO "k_Discount" VALUES (5, 'Накопительная', 10);
INSERT INTO "k_Discount" VALUES (6, 'Временная', 20);
INSERT INTO "k_Discount" VALUES (7, 'Накопительная', 20);
INSERT INTO "k_Discount" VALUES (8, 'Накопительная', 15);
INSERT INTO "k_Discount" VALUES (9, 'Временная', 15);
INSERT INTO "k_Discount" VALUES (10, 'Временная', 10);
INSERT INTO "k_DiscountType" VALUES (1, 'Временная');
INSERT INTO "k_DiscountType" VALUES (2, 'Накопительная');
INSERT INTO "k_DiscountSize" VALUES(3);
INSERT INTO "k_DiscountSize" VALUES(5);
INSERT INTO "k_DiscountSize" VALUES(10);
INSERT INTO "k_DiscountSize" VALUES(15);
INSERT INTO "k_DiscountSize" VALUES(20);
INSERT INTO "k_DiscountSize" VALUES(25);
INSERT INTO "k_WarrantyPrograms" VALUES (1, 'Максимум');
INSERT INTO "k_WarrantyPrograms" VALUES (2, 'Оптимум');
INSERT INTO "k_WarrantyPrograms" VALUES (3, 'Эконом');
INSERT INTO "k_TypesOfAccessories" VALUES (1, 'Ароматизатор', 400);
INSERT INTO "k_TypesOfAccessories" VALUES (2, 'Аэродинамический бокс на крышу', 15000);
INSERT INTO "k_TypesOfAccessories" VALUES (3, 'Багажник в сборе', 3000);
INSERT INTO "k_TypesOfAccessories" VALUES (4, 'Держатель для телефона', 200);
INSERT INTO "k_TypesOfAccessories" VALUES (5, 'Дефлектор капота', 1500);
INSERT INTO "k_TypesOfAccessories" VALUES (6, 'Ковры для салона', 2000);
INSERT INTO "k_TypesOfAccessories" VALUES (7, 'Охранная система PANDORA', 11300);
INSERT INTO "k_TypesOfAccessories" VALUES (8, 'Ремень безопасности', 2000);
INSERT INTO "k_TypesOfAccessories" VALUES (9, 'Солнцезащитная шторка', 1200);
INSERT INTO "k_TypesOfAccessories" VALUES (10, 'Чехлы на сидения', 3000);
INSERT INTO "k_Trailer" VALUES (1, 'ССТ-7132-9К', 495, 'Одноосный прицеп', 92000);
INSERT INTO "k_Trailer" VALUES (2, 'Tavials СТАРТ А3015', 500, 'Одноосный прицеп', 80000);
INSERT INTO "k_Trailer" VALUES (3, 'МЗСА 817701.022', 550, 'Одноосный прицеп', 66000);
INSERT INTO "k_Trailer" VALUES (4, 'Экспедиция Бизнес 111510 Евро', 500, 'Одноосный прицеп', 100000);
INSERT INTO "k_Trailer" VALUES (5, 'Трейлер 829450 Прораб', 480, 'Одноосный прицеп', 55000);
INSERT INTO "k_Trailer" VALUES (6, 'Славич 253Д', 540, 'Двухосный прицеп', 83000);
INSERT INTO "k_Trailer" VALUES (7, 'Кремень 31 Бизнес', 560, 'Двухосный прицеп', 117000);
INSERT INTO "k_Trailer" VALUES (8, 'Вектор Лав 81013', 398, 'Двухосный прицеп', 145000);
INSERT INTO "k_Trailer" VALUES (9, 'МЗСА 817732', 422, 'Двухосный прицеп', 115000);
INSERT INTO "k_Trailer" VALUES (10, 'Трейлер 8294К2', 390, 'Двухосный прицеп', 140000);
INSERT INTO "k_SpareParts" VALUES (1, 'Амортизатор', 2500, 1);
INSERT INTO "k_SpareParts" VALUES (2, 'Диск тормозной', 2100, 4);
INSERT INTO "k_SpareParts" VALUES (3, 'Клапан', 900, 10);
INSERT INTO "k_SpareParts" VALUES (4, 'Колодка тормозная', 1300, 9);
INSERT INTO "k_SpareParts" VALUES (5, 'Компрессор', 1500, 6);
INSERT INTO "k_SpareParts" VALUES (6, 'Поршень', 1200, 8);
INSERT INTO "k_SpareParts" VALUES (7, 'Регулятор', 800, 2);
INSERT INTO "k_SpareParts" VALUES (8, 'Редуктор', 4000, 7);
INSERT INTO "k_SpareParts" VALUES (9, 'Рычаг', 1700, 5);
INSERT INTO "k_SpareParts" VALUES (10, 'Фильтр', 400, 3);
INSERT INTO "k_TypeOfTrailer" VALUES (1, 'Двухосный прицеп');
INSERT INTO "k_TypeOfTrailer" VALUES (2, 'Одноосный прицеп');
INSERT INTO "k_TypeOfTrailer" VALUES (3, 'Прицеп-роспуск');
INSERT INTO "k_TypeOfTrailer" VALUES (4, 'Прицеп-самосвал');
INSERT INTO "k_TypeOfTrailer" VALUES (5, 'Прицеп-цистерна');

