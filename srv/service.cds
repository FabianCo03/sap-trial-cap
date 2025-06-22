using my.bookshop as my from '../db/schema';
using {API_BUSINESS_PARTNER as s4} from './external/API_BUSINESS_PARTNER.csn';

service CatalogService {
    @readonly
    entity Books as projection on my.Books;
}

service BussinessService {
    entity A_BusinessPartner as
        projection on s4.A_BusinessPartner {
            key BusinessPartner,
                Customer,
                BusinessPartnerFullName,
                BusinessPartnerGrouping,
                BusinessPartnerUUID,
                OrganizationBPName1
        };
}
