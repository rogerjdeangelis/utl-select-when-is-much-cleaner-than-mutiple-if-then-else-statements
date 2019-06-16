Select when is much cleaner than mutiple if then else statements                                           
                                                                                                           
SAS-L: If-Then Statements not Producing Output- HELP!                                                      
                                                                                                           
SAS Forum                                                                                                  
https://tinyurl.com/y5sz689v                                                                               
https://communities.sas.com/t5/SAS-Programming/If-Then-Statements-not-Producing-Output-HELP/m-p/566193     
                                                                                                           
Rather than complex redundant if statements consider using select when.                                    
Much cleaner.                                                                                              
                                                                                                           
   if race=";2028-9;" or race="Asian" then racenew="A";                                                    
   if race=";2054-5;" or race="Black/African American" then racenew="B";                                   
   if race=";2106-3;" or race="White" then racenew="W";                                                    
   if race=";2131-1;" or race="Other" then racenew="O";                                                    
   if race="Unknown" then racenew=" ";                                                                     
                                                                                                           
*          _       _   _                                                                                   
 ___  ___ | |_   _| |_(_) ___  _ __                                                                        
/ __|/ _ \| | | | | __| |/ _ \| '_ \                                                                       
\__ \ (_) | | |_| | |_| | (_) | | | |                                                                      
|___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                      
                                                                                                           
;                                                                                                          
                                                                                                           
data want;                                                                                                 
  input race $;                                                                                            
  select (race);                                                                                           
    when ( ";2028-9;", "Asian"                 )  racenew="A";                                             
    when ( ";2054-5;", "Black/African American")  racenew="B";                                             
    when ( ";2106-3;", "White"                 )  racenew="W";                                             
    when ( ";2131-1;", "Other"                 )  racenew="O";                                             
    when ( "Unknown"                           )  racenew=" ";                                             
    otherwise racenew="?";                                                                                 
  end;                                                                                                     
cards4;                                                                                                    
;2106-3;                                                                                                   
;2106-3;                                                                                                   
White                                                                                                      
White                                                                                                      
White                                                                                                      
;2106-3;                                                                                                   
;2106-3;                                                                                                   
;2106-3;                                                                                                   
;2106-3;                                                                                                   
;2106-3;                                                                                                   
White                                                                                                      
;2106-3;                                                                                                   
White                                                                                                      
White                                                                                                      
;2106-3;                                                                                                   
;2106-3;                                                                                                   
;;;;                                                                                                       
run;quit;                                                                                                  
                                                                                                           
*            _               _                                                                             
  ___  _   _| |_ _ __  _   _| |_                                                                           
 / _ \| | | | __| '_ \| | | | __|                                                                          
| (_) | |_| | |_| |_) | |_| | |_                                                                           
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                          
                |_|                                                                                        
;                                                                                                          
Up to 40 obs WORK.WANT total obs=16                                                                        
                                                                                                           
Obs    RACE        RACENEW                                                                                 
                                                                                                           
  1    ;2106-3;       W                                                                                    
  2    ;2106-3;       W                                                                                    
  3    White          W                                                                                    
  4    White          W                                                                                    
  5    White          W                                                                                    
  6    ;2106-3;       W                                                                                    
  7    ;2106-3;       W                                                                                    
  8    ;2106-3;       W                                                                                    
  9    ;2106-3;       W                                                                                    
 10    ;2106-3;       W                                                                                    
 11    White          W                                                                                    
 12    ;2106-3;       W                                                                                    
 13    White          W                                                                                    
 14    White          W                                                                                    
 15    ;2106-3;       W                                                                                    
 16    ;2106-3;       W                                                                                    
                                                                                                           
                                                                                                           
