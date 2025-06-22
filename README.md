# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

# API EXTERNA BTP API_BUSINESS_PARTNER
Recurso: [text](https://youtu.be/CNinDSPDUCM)
1. Abrir: https://api.sap.com/api/API_BUSINESS_PARTNER/overview
2. Tab Api specification -> descargar oData EDMX
3. Crear directorio external dentro de directorio /srv
3. Archivo descargado llevarlo a db/srv/external
4. En la terminal: cds import srv/external/API_BUSINESS_PARTNER.edmx
5. Abrir https://api.sap.com/api/API_BUSINESS_PARTNER/overview
6. Tab Configuration Details
7. Copiar https://sandbox.api.sap.com/s4hanacloud/sap/opu/odata/sap/API_BUSINESS_PARTNER
8. Pegarla en package.json (url, dentro de credentials)
9. En service.cds colocar "using {API_BUSINESS_PARTNER as API_BP} from './external/API_BUSINESS_PARTNER';"
Colocar entity:
service BussinessService {
    entity BusinessPartner as
        projection on API_BP.A_BusinessPartner {
            key BusinessPartner,
                Customer,
                BusinessPartnerFullName,
                BusinessPartnerGrouping,
                BusinessPartnerUUID,
                OrganizationBPName1
        };
}

10. Crear el service.js
11. Correr comando "npm install @sap-cloud-sdk/http-client and @sap-cloud-sdk/util"
