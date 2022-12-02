namespace incfeapp;



entity Incidents  {
      @title : 'Incident Number'
     key incidentNumber  : String;
      @title : 'Priority '
      priority_code   : String;
      @title : 'Created Date'
      createdDate     : Date;
      @title : 'App ID'
      appID           : String;
      @title : 'App Name'
      appName         : String;
      @title : 'App Type'
      appType         : String;
      @title : 'Assignment Group'
      assignmentGroup : String;
      @title : 'IT Service'
      itService       : String;
      @title : 'Status'
      status          : String;

      
     
}



