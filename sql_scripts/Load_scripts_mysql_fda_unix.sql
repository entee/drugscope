load data local infile 'package.txt' into table FDAPACKAGE fields terminated by '\t' 
ESCAPED BY '�'
lines terminated by '\n'
IGNORE 1 LINES
(@PRODUCTID, @PRODUCTNDC, @NDCPACKAGECODE, @PACKAGEDESCRIPTION)
SET PRODUCTID =@PRODUCTID,
    PRODUCTNDC =@PRODUCTNDC,
    NDCPACKAGECODE =@NDCPACKAGECODE,
    PACKAGEDESCRIPTION =@PACKAGEDESCRIPTION;

load data local infile 'product.txt' into table FDAPRODUCT fields terminated by '\t' 
ESCAPED BY '�'
lines terminated by '\n'
IGNORE 1 LINES
(@PRODUCTID, @PRODUCTNDC, @PRODUCTTYPENAME, @PROPRIETARYNAME, @PROPRIETARYNAMESUFFIX, @NONPROPRIETARYNAME,
    @DOSAGEFORMNAME, @ROUTENAME, @STARTMARKETINGDATE, @ENDMARKETINGDATE, @MARKETINGCATEGORYNAME,
    @APPLICATIONNUMBER, @LABELERNAME, @SUBSTANCENAME, @ACTIVE_NUMERATOR_STRENGTH, @ACTIVE_INGRED_UNIT,
    @PHARM_CLASSES, @DEASCHEDULE)
SET PRODUCTID =@PRODUCTID,
    PRODUCTNDC =@PRODUCTNDC,
    PRODUCTTYPENAME =@PRODUCTTYPENAME,
    PROPRIETARYNAME =@PROPRIETARYNAME,
    PROPRIETARYNAMESUFFIX =@PROPRIETARYNAMESUFFIX,
    NONPROPRIETARYNAME =@NONPROPRIETARYNAME,
    DOSAGEFORMNAME =@DOSAGEFORMNAME,
    ROUTENAME =@ROUTENAME,
    STARTMARKETINGDATE =@STARTMARKETINGDATE,
    ENDMARKETINGDATE =@ENDMARKETINGDATE,
    MARKETINGCATEGORYNAME =@MARKETINGCATEGORYNAME,
    APPLICATIONNUMBER =@APPLICATIONNUMBER,
    LABELERNAME =@LABELERNAME,
    SUBSTANCENAME =@SUBSTANCENAME,
    ACTIVE_NUMERATOR_STRENGTH =@ACTIVE_NUMERATOR_STRENGTH,
    ACTIVE_INGRED_UNIT =@ACTIVE_INGRED_UNIT,
    PHARM_CLASSES =@PHARM_CLASSES,
    DEASCHEDULE =@DEASCHEDULE;
