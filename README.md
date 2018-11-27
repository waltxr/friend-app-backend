# README

## API Endpoints

### Get Account

##### /signup
###### requires name, email and password
###### will return token good for 24hrs

### Authorize

##### /auth/login
###### exchange email and password for token good for 24hrs

```grievances POST   /grievances(.:format)                            grievances#create```
```                  grievance GET    /grievances/:id(.:format)                        grievances#show```
```                            PATCH  /grievances/:id(.:format)                        grievances#update```
```                            PUT    /grievances/:id(.:format)                        grievances#update```
```                            DELETE /grievances/:id(.:format)                        grievances#destroy```
```               valid_points POST   /valid_points(.:format)                          valid_points#create```
```                valid_point GET    /valid_points/:id(.:format)                      valid_points#show```
```                            PATCH  /valid_points/:id(.:format)                      valid_points#update```
```                            PUT    /valid_points/:id(.:format)                      valid_points#update```
```                            DELETE /valid_points/:id(.:format)                      valid_points#destroy```
```                       lols POST   /lols(.:format)                                  lols#create```
```                        lol GET    /lols/:id(.:format)                              lols#show```
```                            PATCH  /lols/:id(.:format)                              lols#update```
```                            PUT    /lols/:id(.:format)                              lols#update```
```                            DELETE /lols/:id(.:format)                              lols#destroy```
```              proclamations POST   /proclamations(.:format)                         proclamations#create```
```               proclamation GET    /proclamations/:id(.:format)                     proclamations#show```
```                            PATCH  /proclamations/:id(.:format)                     proclamations#update```
```                            PUT    /proclamations/:id(.:format)                     proclamations#update```
```                            DELETE /proclamations/:id(.:format)                     proclamations#destroy```
```                     quotes POST   /quotes(.:format)                                quotes#create```
```                      quote GET    /quotes/:id(.:format)                            quotes#show```
```                            PATCH  /quotes/:id(.:format)                            quotes#update```
```                            PUT    /quotes/:id(.:format)                            quotes#update```
```                            DELETE /quotes/:id(.:format)                            quotes#destroy```
```                    sources POST   /sources(.:format)                               sources#create```
```                     source GET    /sources/:id(.:format)                           sources#show```
```                            PATCH  /sources/:id(.:format)                           sources#update```
```                            PUT    /sources/:id(.:format)                           sources#update```
```                            DELETE /sources/:id(.:format)                           sources#destroy```
```      user_filed_grievances GET    /users/:user_id/filed_grievances(.:format)       grievances#filed_index```
```   user_received_grievances GET    /users/:user_id/received_grievances(.:format)    grievances#received_index```
```  user_awarded_valid_points GET    /users/:user_id/awarded_valid_points(.:format)   valid_points#awarded_index```
``` user_received_valid_points GET    /users/:user_id/received_valid_points(.:format)  valid_points#received_index```
```          user_awarded_lols GET    /users/:user_id/awarded_lols(.:format)           lols#awarded_index```
```         user_received_lols GET    /users/:user_id/received_lols(.:format)          lols#received_index```
```user_reported_proclamations GET    /users/:user_id/reported_proclamations(.:format) proclamations#reported_index```
```user_received_proclamations GET    /users/:user_id/received_proclamations(.:format) proclamations#received_index```
```       user_reported_quotes GET    /users/:user_id/reported_quotes(.:format)        quotes#reported_index```
```       user_received_quotes GET    /users/:user_id/received_quotes(.:format)        quotes#received_index```
```         user_cited_sources GET    /users/:user_id/cited_sources(.:format)          sources#cited_index```
```      user_received_sources GET    /users/:user_id/received_sources(.:format)       sources#received_index```
```                      users GET    /users(.:format)                                 users#index```
```                            POST   /users(.:format)                                 users#create```
```                       user GET    /users/:id(.:format)                             users#show```
```                     signup POST   /signup(.:format)                                users#create```
```                 auth_login POST   /auth/login(.:format)                            authentication#authenticate```
```                 users_edit PUT    /users/edit(.:format)                            users#update```
```               users_delete DELETE /users/delete(.:format)                          users#destroy```
