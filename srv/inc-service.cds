using { incfeapp as db } from '../db/data-model';
   
service IncidentService@(path:'/IncidentService')
    {

    entity Incidents as projection on db.Incidents;

  
    
   
    }