--FINAL PACKAGE
CREATE OR REPLACE PACKAGE INSERTION
AS
PROCEDURE LANDLORD_APARTMENT(
    p_LANDLORD_FIRST_NAME landlord.landlord_first_name%TYPE,
    p_LANDLORD_LAST_NAME LANDLORD.LANDLORD_LAST_NAME%TYPE,           
    p_LANDLORD_CONTACT landlord.landlord_contact%TYPE,
    p_LANDLORD_EMAIL landlord.landlord_email%TYPE,
    p_LANDLORD_APARTMENT_NUMBER landlord.landlord_apartment_number%TYPE,
    p_LANDLORD_STREET_NAME landlord.landlord_street_name%TYPE,
    p_LANDLORD_ZIPCODE landlord.landlord_zipcode%TYPE,
    p_APARTMENT_TYPE_ID apartment.apartment_type_id%TYPE,
    p_APARTMENT_NUMBER apartment.apartment_number%TYPE,
    p_APARTMENT_STREET_NAME apartment.apartment_street_name%TYPE,
    p_APARTMENT_NEIGHBOURHOOD apartment.apartment_neighbourhood%TYPE,
    p_APARTMENT_ZIPCODE apartment.apartment_zipcode%TYPE,
    p_APARTMENT_TOTAL_AREA apartment.total_area%TYPE,
    p_APARTMENT_MONTHLY_RENT apartment.monthly_rent%TYPE
);
    
PROCEDURE LEASE_CUSTOMERS_INSERTIONS( 
    p_LEASE_ID LEASE_DETAILS.lease_id%TYPE,
    p_APARTMENT_ID APARTMENT.APARTMENT_ID%TYPE, 
    p_START_DATE lease_details.start_date%TYPE,
    p_END_DATE lease_details.end_date%TYPE,
    p_MEMBERS_ON_LEASE lease_details.members_on_lease%TYPE, 
     p_CUSTOMER_ID CUSTOMERS.CUSTOMER_ID%TYPE,
    p_CUSTOMER_FIRST_NAME CUSTOMERS.CUSTOMER_FIRST_NAME%TYPE,
    p_CUSTOMER_LAST_NAME CUSTOMERS.CUSTOMER_LAST_NAME%TYPE,
    p_CUSTOMER_CONTACT CUSTOMERS.CUSTOMER_CONTACT%TYPE,
    p_CUSTOMER_EMAIL CUSTOMERS.CUSTOMER_EMAIL%TYPE,
    p_CUSTOMER_APARTMENT_NUMBER CUSTOMERS.CUSTOMER_APARTMENT_NUMBER%TYPE,
    p_CUSTOMER_STREET_NUMBER CUSTOMERS.CUSTOMER_STREET_NUMBER%TYPE,
    p_CUSTOMER_STREET_NAME CUSTOMERS.CUSTOMER_STREET_NAME%TYPE,
    p_CUSTOMER_NEIGHBORHOOD CUSTOMERS.CUSTOMER_NEIGHBOURHOOD%TYPE,
    p_CUSTOMER_CITY CUSTOMERS.CUSTOMER_CITY%TYPE,
    p_CUSTOMER_STATE CUSTOMERS.CUSTOMER_STATE%TYPE,
    p_CUSTOMER_COUNTRY CUSTOMERS.CUSTOMER_COUNTRY%TYPE,
    p_CUSTOMER_ZIPCODE CUSTOMERS.CUSTOMER_ZIPCODE%TYPE
   
);

PROCEDURE PAYMENT_DETAILS
(
    p_PAYMENT_ID PAYMENT.PAYMENT_ID%TYPE,
    p_LEASE_ID LEASE_DETAILS.LEASE_ID%TYPE, 
    p_AMOUNT_TRANSFERRED PAYMENT.AMOUNT_TRANSFERRED%TYPE,
    p_TRANSACTION_DATE PAYMENT.TRANSACTION_DATE%TYPE,
    p_PAYMENT_TYPE PAYMENT.PAYMENT_TYPE%TYPE,
    P_PAYEE_FIRST_NAME PAYMENT.PAYEE_FIRST_NAME%TYPE,
    P_PAYEE_LAST_NAME PAYMENT.PAYEE_LAST_NAME%TYPE

);

PROCEDURE MAINTENANCE
(   
    p_REQUEST_ID MAINTENANCE_REQUESTS.REQUEST_ID%TYPE,
    p_APARTMENT_ID MAINTENANCE_REQUESTS.APARTMENT_ID%TYPE,
    p_EMPLOYEE_ID MAINTENANCE_REQUESTS.EMPLOYEE_ID%TYPE,
    p_REQUEST_DATE  MAINTENANCE_REQUESTS.REQUEST_DATE%TYPE
);

PROCEDURE UTILITIES
(   
    p_UTILITY_ID UTILITY.UTILITY_ID%TYPE,
    p_UTILITY_NAME UTILITY.UTILITY_NAME%TYPE
);

PROCEDURE APARTMENT_UTILITIES
(   
    p_UTILITY_ID APARTMENT_UTILITY.UTILITY_ID%TYPE,
    p_APARTMENT_ID APARTMENT_UTILITY.APARTMENT_ID%TYPE,
    p_IS_INCLUDED_IN_RENT APARTMENT_UTILITY.IS_INCLUDED_IN_RENT%TYPE
);
PROCEDURE EMPLOYEES
(
    p_EMPLOYEE_ID EMPLOYEE.EMPLOYEE_ID%TYPE,
    p_ROLE_ID  EMPLOYEE_ROLES.ROLE_ID %TYPE,
    p_EMPLOYEE_FIRST_NAME EMPLOYEE.EMPLOYEE_FIRST_NAME%TYPE,
    p_EMPLOYEE_LAST_NAME EMPLOYEE.EMPLOYEE_LAST_NAME%TYPE,
    p_EMPLOYEE_CONTACT EMPLOYEE.EMPLOYEE_CONTACT%TYPE,
    p_EMPLOYEE_EMAIL EMPLOYEE.EMPLOYEE_EMAIL%TYPE,
    p_EMPLOYEE_APARTMENT_NUMBER EMPLOYEE.EMPLOYEE_APARTMENT_NUMBER%TYPE,
    p_EMPLOYEE_STREET_NAME EMPLOYEE.EMPLOYEE_STREET_NAME%TYPE,
    p_EMPLOYEE_NEIGHBOURHOOD EMPLOYEE.EMPLOYEE_NEIGHBOURHOOD%TYPE,
    p_EMPLOYEE_ZIPCODE EMPLOYEE.EMPLOYEE_ZIPCODE%TYPE
);

PROCEDURE EMPLOYEE_APARTMENTS
(
    p_APARTMENT_ID APARTMENT.APARTMENT_ID%TYPE,
    p_EMPLOYEE_ID EMPLOYEE.EMPLOYEE_ID%TYPE 
);
PROCEDURE APARTMENT_TYPES
(
P_Locality apartment_type.locality%TYPE,
P_apartment_type apartment_type.apartment_type%TYPE,
P_rooms apartment_type.number_of_rooms%TYPE,
P_bath apartment_type.number_of_baths%TYPE
);

PROCEDURE EMPLOYEE_ROLESS
(
    p_ROLE_ID EMPLOYEE_ROLES.ROLE_ID%TYPE,
    p_ROLE_TYPE EMPLOYEE_ROLES.ROLE_TYPE%TYPE 
);

PROCEDURE APARTMENT_SOLD
(
s_apartment_number apartment.apartment_number%type,
s_apartment_street_name apartment.apartment_street_name%type
);


PROCEDURE LEASE_BREAKAGE
(
u_Lease_id lease_details.lease_id%type, 
u_end_date lease_details.End_date%type
);

PROCEDURE UPDATE_REQ_CLOSED_DATE
(
  REQ_ID MAINTENANCE_REQUESTS.REQUEST_ID%TYPE,
  CLOSED_DATE MAINTENANCE_REQUESTS.REQUEST_CLOSED_DATE%TYPE
);

END insertion;