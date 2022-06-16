%% Automate Importing Data by Generating Code Using the Database Explorer App
% This code reproduces the data obtained using the Database Explorer app by
% connecting to a database, executing a SQL query, and importing data into the
% MATLAB(R) workspace. To use this code, add the password for connecting to the
% database in the database command.

% Auto-generated by MATLAB Version 9.6 (R2019a) and Database Toolbox Version 9.1 on 02-May-2021 10:40:08

%% Make connection to database
conn = database('zyf','admin','123456');

%Set query to execute on the database
query = ['SELECT data ' ...
    'FROM jisuanqi.savedata'];

%% Execute query and fetch results
data = fetch(conn,query);

%% Close connection to database
close(conn)

%% Clear variables
clear conn query