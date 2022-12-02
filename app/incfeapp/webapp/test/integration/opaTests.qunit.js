sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sap/incfeapp/test/integration/FirstJourney',
		'com/sap/incfeapp/test/integration/pages/IncidentsList',
		'com/sap/incfeapp/test/integration/pages/IncidentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, IncidentsList, IncidentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sap/incfeapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIncidentsList: IncidentsList,
					onTheIncidentsObjectPage: IncidentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);