using riskmanagement as rm from '../db/schema';

// Annotate Risk Elements
annotate rm.Risks with {
    ID          @title: 'Risk';
    title       @title: 'Title';
    owner       @title: 'Owner';
    prio        @title: 'Priority';
    descr       @title: 'Description';
    miti        @title: 'Mitigation';
    impact      @title: 'Impact';
    bp          @title: 'Business Partner';
    criticality @title: 'Criticality';
}

// Annotate Miti Elements
annotate rm.Mitigations with {
    ID    @(
        UI.Hidden,
        Common: {Text: descr}
    );

    owner @title: 'Owner';
    descr @title: 'Description';
}

annotate rm.Risks with {
    miti @(Common: {
        // Show Text, not id for miigation in the context of risks
        Text           : miti.descr,
        TextArrangement: #TextOnly,
        ValueList      : {
            Label         : 'Mitigations',
            CollectionPath: 'Mitigations',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: miti_ID,
                    ValueListProperty: 'ID'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'descr'
                }
            ]
        },
    });

    bp   @(Common: {
        // Show Text, not id for Business Partners in the context of risks
        Text           : bp.LastName,
        TextArrangement: #TextOnly,
        ValueList      : {
            Label         : 'Business Partners',
            CollectionPath: 'BusinessPartners',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: bp_BusinessPartner,
                    ValueListProperty: 'BusinessPartner'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'LastName'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'FirstName'
                }
            ]
        },
    });

}

// Annotate BusinessPartners Entity
annotate rm.BusinessPartners with {
    BusinessPartner @(
        UI.Hidden,
        Common: {Text: LastName}
    );
    LastName        @title: 'Last Name';
    FirstName       @title: 'First Name';
}
