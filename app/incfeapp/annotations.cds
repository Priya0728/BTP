using IncidentService as service from '../../srv/inc-service';


annotate service.Incidents with @(UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Value : incidentNumber,
    },
    {
        $Type : 'UI.DataField',
        Value : createdDate,
    },
    {
        $Type : 'UI.DataField',
        Value : appID,
    },
    {
        $Type : 'UI.DataField',
        Value : appName,
    },
    {
        $Type : 'UI.DataField',
        Value : appType,
    },
    {
        $Type : 'UI.DataField',
        Value : assignmentGroup,
    },
    {
        $Type             : 'UI.DataField',
        Criticality       : #Positive,
        Value             : status
      
    },
    {
                $Type                     : 'UI.DataField',
                Value                     : priority_code,
                Criticality               : #Information,
                CriticalityRepresentation : #WithoutIcon
            },
]);

annotate service.Incidents with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : incidentNumber,
            },
            {
                $Type                     : 'UI.DataField',
                Value                     : priority_code,
                Criticality               : #Critical,
                CriticalityRepresentation : #WithoutIcon
            },
            {
                $Type : 'UI.DataField',
                Value : createdDate,
            },
            {
                $Type : 'UI.DataField',
                Value : appID,
            },
            {
                $Type : 'UI.DataField',
                Value : appName,
            },
            {
                $Type : 'UI.DataField',
                Value : appType,
            },
            {
                $Type : 'UI.DataField',
                Value : assignmentGroup,
            },
            {
                $Type : 'UI.DataField',
                Value : itService,
            },
            {
                $Type : 'UI.DataField',
                Value : status,

            },
        ],
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'General Information',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.Incidents with @(UI.SelectionFields : [
    incidentNumber,
    assignmentGroup,
    status
]);
