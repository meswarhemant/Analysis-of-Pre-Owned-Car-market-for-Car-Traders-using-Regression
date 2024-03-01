* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT selling_price
  /METHOD=ENTER year km_driven mileagekmplkmkg engineCC max_powerBHP seats Petrol Diesel CNG LPG 
    Seller Trans Firstowner Secondowner Thirdowner FourthampAboveOwner TestDriveCar.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT selling_price
  /METHOD=ENTER year engineCC max_powerBHP Trans.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT selling_price
  /METHOD=ENTER year engineCC max_powerBHP Trans Diesel km_driven Seller Firstowner.

ONEWAY selling_price BY year
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY km_driven BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY mileagekmplkmkg BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY engineCC BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY max_powerBHP BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

CORRELATIONS
  /VARIABLES=year selling_price km_driven mileagekmplkmkg engineCC max_powerBHP seats Petrol Diesel 
    CNG LPG Seller Trans Firstowner Secondowner Thirdowner FourthampAboveOwner TestDriveCar
  /PRINT=TWOTAIL NOSIG FULL
  /MISSING=PAIRWISE.

ONEWAY Diesel BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY Seller BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY Trans BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY Firstowner BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY Secondowner BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY Thirdowner BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).

ONEWAY CNG BY selling_price
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95).
