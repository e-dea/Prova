STUDY = pop_erpparams(STUDY, 'timerange',[625 675],'plotgroups','together','averagechan','off','topotime',[]);
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'C1' 'Cz' 'C2' 'CP1' 'CPz' 'CP2' 'P1' 'Pz' 'P2' }, 'plotsubjects', 'on' ); % GUI INPUT
%[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'});  % ADAPTING GUI INPUT
[F df pvals] = statcond(erpdata, 'paired', 'on', 'method', 'perm');
%a= pvals <0.05
a = pvals < 0.01



STUDY = pop_erpparams(STUDY, 'timerange',[600 700],'plotgroups','together','averagechan','on','topotime',[]);
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'C1' 'Cz' 'C2' 'CP1' 'CPz' 'CP2' 'P1' 'Pz' 'P2' }, 'plotsubjects', 'on' ); % GUI INPUT
%[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'});  % ADAPTING GUI INPUT
[F df pvals] = statcond(erpdata, 'paired', 'on', 'method', 'perm');
%a= pvals <0.05
a = pvals < 0.01


STUDY = pop_erpparams(STUDY, 'timerange',[600 900],'plotgroups','together','averagechan','on','topotime',[]);
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'C1' 'Cz' 'C2' 'CP1' 'CPz' 'CP2'}, 'plotsubjects', 'on' ); % GUI INPUT
%[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'});  % ADAPTING GUI INPUT
[F df pvals] = statcond(erpdata, 'paired', 'on', 'method', 'perm');
%a= pvals <0.05
a = pvals < 0.01


STUDY = pop_erpparams(STUDY, 'timerange',[420 520],'plotgroups','together','averagechan','off','topotime',[]);
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'Cz' 'C2' 'C4' 'FC2' 'FC4'}, 'plotsubjects', 'on' ); % GUI INPUT
%[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'});  % ADAPTING GUI INPUT
[F df pvals] = statcond(erpdata, 'paired', 'on', 'method', 'perm');
%a= pvals <0.05
a = pvals < 0.01

STUDY = pop_erpparams(STUDY, 'timerange',[600 700],'plotgroups','together','averagechan','on','topotime',[]);
[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'Cz'}, 'plotsubjects', 'on' ); % GUI INPUT
%[STUDY erpdata erptimes pgroup pcond pinter] = std_erpplot(STUDY,ALLEEG,'channels',{'E81'});  % ADAPTING GUI INPUT
[F df pvals] = statcond(erpdata, 'paired', 'on', 'method', 'perm');
%a= pvals <0.05
a = pvals < 0.01