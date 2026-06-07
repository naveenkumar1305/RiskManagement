using { RiskManagement as my } from '../db/schema.cds';
using { API_BUSINESS_PARTNER as bp } from './external/API_BUSINESS_PARTNER';

@path:'/service/RiskManagementService'
service RiskManagementService {

    @cds.redirection.target
    @odata.draft.enabled
    @restrict:[
        { grant:'READ', to:'RiskViewer' },
        { grant:'*', to:'RiskManager' }
    ]
    entity Risks as projection on my.Risks;

    @odata.draft.enabled
    @restrict:[
        { grant:'READ', to:'RiskViewer' },
        { grant:'*', to:'RiskManager' }
    ]
    entity Mitigations as projection on my.Mitigations;

    entity BusinessPartners as projection on bp.A_BusinessPartner {
        BusinessPartner,
        Customer,
        Supplier,
        BusinessPartnerCategory,
        BusinessPartnerFullName,
        BusinessPartnerIsBlocked
    };
}

// annotate RiskManagementService with @requires:[
//     'authenticated-user'
// ];