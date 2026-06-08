sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"riskmanagement/risksmanagement/test/integration/pages/RisksList",
	"riskmanagement/risksmanagement/test/integration/pages/RisksObjectPage"
], function (JourneyRunner, RisksList, RisksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('riskmanagement/risksmanagement') + '/test/flpSandbox.html#riskmanagementrisksmanagement-tile',
        pages: {
			onTheRisksList: RisksList,
			onTheRisksObjectPage: RisksObjectPage
        },
        async: true
    });

    return runner;
});

