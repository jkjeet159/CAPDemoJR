using {com.acc.customtype as my } from '../db/schema1';
service ProductService {
    
    entity Products as projection on my.ProductEntity 
    entity PharmaProducts as projection on my.PharmProductEntity;
    entity Customers as projection on my.CustomerEntity;

}
