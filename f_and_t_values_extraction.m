%%%%%%%%%%%%%%%%%%% with averaged channels %%%%%%%%%%%%%%%%%%%%%%%%%
% STUDY = pop_erpparams(STUDY, 'averagechan','on','topotime',[]);
% STUDY = std_erpplot(STUDY,ALLEEG,'channels',{'E73' 'E74' 'Oz' 'E81' 'E82' 'E88'});
%STUDY = pop_erpparams(STUDY, 'averagechan','on','topotime',[]);
STUDY = pop_statparams(STUDY, 'method','bootstrap');
STUDY = pop_erpparams(STUDY, 'timerange',[20 60], 'averagechan','off','topotime',[]);
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E68' 'E69' 'O1' 'E73' 'E74' 'Oz' 'E81' 'E82' 'O2' 'E88' 'E89' 'E94'});
%[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E74' 'Oz' 'E81' 'E82'});  % ADAPTING GUI INPUT

%[t df pvals] = statcondfieldtrip(erpdata, 'paired', 'off', 'method', 'bootstrap');

[t df pvals] = statcondfieldtrip(erpdata, 'paired', 'off', 'method',  'permutation');

a= pvals <0.05

%%%%%%%%%%%%%%%%%%% with averaged channels %%%%%%%%%%%%%%%%%%%%%%%%%
% STUDY = pop_erpparams(STUDY, 'averagechan','on','topotime',[]);
% STUDY = std_erpplot(STUDY,ALLEEG,'channels',{'E73' 'E74' 'Oz' 'E81' 'E82' 'E88'});
%STUDY = pop_erpparams(STUDY, 'averagechan','on','topotime',[]);
STUDY = pop_statparams(STUDY, 'method','bootstrap');
STUDY = pop_erpparams(STUDY, 'timerange',[0 400], 'averagechan','off','topotime',[]);
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E1' 'E2' 'E3' 'E4' 'E5' 'E6' 'E7' 'E8' 'Fp2' 'E10' 'Fz' 'E12' 'E13' 'E15' 'E16' 'E17' 'E18' 'E19' 'E20'...
    'Fp1' 'E23' 'F3' 'E25' 'E26' 'E27' 'E28' 'E29' 'E30' 'E31' 'E32' 'F7' 'E34' 'E35' 'C3' 'E37' 'E38' 'E39' 'T7' 'E41' 'E42' 'E43' 'E44' 'E45' 'E46' 'E47' 'E48'...
    'E49' 'E50' 'E51' 'E52' 'E53' 'E54' 'E55' 'E56' 'E57' 'E58' 'E59' 'P3' 'E61' 'Pz' 'E63' 'E64' 'E65' 'P7' 'E66' 'E67' 'E68' 'E69' 'O1' 'E71' 'E72' 'E73' 'E74'...
    'Oz' 'E76' 'E77' 'E78' 'E79' 'E80' 'E81' 'E82' 'O2' 'E84' 'P4' 'E86' 'E87' 'E88' 'E89' 'E90' 'P8' 'E91' 'E92' 'E93' 'E94' 'E95' 'E96' 'E97' 'E98' 'E99' 'E100'...
    'E101' 'E102' 'E103' 'C4' 'E105' 'E106' 'E107' 'E108' 'T8' 'E110' 'E111' 'E112' 'E113' 'E114' 'E115' 'E116' 'E117' 'E118' 'E119' 'E120' 'E121' 'F8' 'F4'...
    'E125'});
%[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E74' 'Oz' 'E81' 'E82'});  % ADAPTING GUI INPUT

%[t df pvals] = statcondfieldtrip(erpdata, 'paired', 'off', 'method', 'bootstrap');

[t df pvals] = statcondfieldtrip(erpdata, 'paired', 'off', 'method',  'permutation');

a= pvals <0.05




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% normal stacond statistic %%%%


STUDY = pop_statparams(STUDY, 'mode','fieldtrip','fieldtripmethod','montecarlo','fieldtripalpha',0.05);
STUDY = std_erpplot(STUDY,ALLEEG,'channels',{'E74' 'Oz' 'E81' 'E82'});

[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E74' 'Oz' 'E81' 'E82'});  % ADAPTING GUI INPUT

%[t df pvals] = statcond(erpdata, 'paired', 'off', 'method', 'perm');
[t df pvals] = statcond(erpdata, 'paired', 'off', 'method', 'bootstrap');

a= pvals <0.05


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Fieldtrip statitics using montecarlo or bootstrap (best!)

STUDY = pop_statparams(STUDY, 'mode','fieldtrip','fieldtripmethod','montecarlo','fieldtripalpha',0.05);
%[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E73' 'E74'  'E81' 'E82' 'E88'});
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E74' 'Oz' 'E81' 'E82'});  % ADAPTING GUI INPUT

%[t df pvals] = statcondfieldtrip(erpdata, 'paired', 'off', 'method', 'bootstrap');

[t df pvals] = statcondfieldtrip(erpdata, 'paired', 'off', 'method',  'permutation');

a= pvals <0.05


% STUDY = pop_statparams(STUDY, 'method','perm','alpha',0.05); % GUI INPUT
% STUDY = std_erpplot(STUDY,ALLEEG,'channels',{'E1'}, 'plotsubjects', 'on' ); % GUI INPUT

STUDY = pop_statparams(STUDY, 'method','perm','alpha',0.05); % GUI INPUT
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'}, 'plotsubjects', 'on' ); % GUI INPUT

[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'});  % ADAPTING GUI INPUT

[t df pvals] = statcond(erpdata, 'paired', 'off', 'method', 'perm');

a= pval <0.05




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
where dataCell{1} = (ElecxTimesxTrials), dataCell{2} = (ElecxTimesxTrials)

STUDY,ALLEEG,'channels',{'E68' 'E69' 'O1' 'E71' 'E72' 'E73' 'E74' 'Oz' 'E76' 'E77' 'E78' 'E79' 'E80' 'E81' 'E82' 'O2'});

[STUDY erpdata erptimes erpfreqs] = std_erpplot(STUDY,ALLEEG,'channels',{'E68' 'E69' 'O1' 'E71' 'E72' 'E73' 'E74' 'Oz' 'E76' 'E77' 'E78' 'E79' 'E80' 'E81' 'E82' 'O2'});

[STUDY erpdata erptimes] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'});

[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'});


[stats, df, pvals, surrog] = statcond( data, 'key','val'... );
    
[F, df, pvals] = statcond( erpdata);

[t df pvals] = statcond(erpdata, 'paired', 'off', 'method', 'perm');


Examples:
       >> a = { rand(1,10) rand(1,10)+0.5 }; % pseudo 'paired' data vectors
          [t df pvals] = statcond(a);        % perform paired t-test
            pvals =                  
               5.2807e-04 % standard t-test probability value
          % Note: for different rand() outputs, results will differ.
 
          [t df pvals surog] = statcond(a, 'method', 'perm', 'naccu', 2000); 
            pvals =
               0.0065 % nonparametric t-test using 2000 permuted data sets
 
          a = { rand(2,11) rand(2,10) rand(2,12)+0.5 }; % pseudo 'unpaired' 
          [F df pvals] = statcond(a); % perform an unpaired ANOVA 
            pvals =
               0.00025 % p-values for difference between columns 
               0.00002 % for each data row
 
          a = { rand(3,4,10) rand(3,4,10) rand(3,4,10); ...
                rand(3,4,10) rand(3,4,10) rand(3,4,10)+0.5 }; 
          % pseudo (2,3)-condition data array, each entry containing 
          %                                    ten (3,4) data matrices
          [F df pvals] = statcond(a);  % perform a paired 2-way ANOVA 
          % Output:
            pvals{1} % a (3,4) matrix of p-values; effects across rows
            pvals{2} % a (3,4) matrix of p-values; effects across colums 
            pvals{3} % a (3,4) matrix of p-values; interaction effects
                                       % across rows and columns
                                       
                                       
           a = { rand(1,10) rand(1,10)+0.5 };