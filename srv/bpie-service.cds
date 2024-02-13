using {acc.com.odataproj as my } from '../db/schema3';
service BusinessPartnerService @(path:'/BusinessPartner') {
    // example for exclude properties
    entity Suppliers as projection on my.BusinessPartnerEntity 
                            excluding {
                                createdAt, 
                                createdBy, 
                                deliveryCustomerName,
                                deliveryCustomerAddress
                            };
    // example for include rename properties
    entity Customers as projection on my.BusinessPartnerEntity{
                                id as companyId,
                                deliveryCustomerName as companyName,
                                deliveryCustomerAddress as companyHeadquarters                                                               
                            };
}
