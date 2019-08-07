filename _inbox "%sysfunc(getoption(work))/fanfinal.sas7bdat";

proc http method="get" 
	url="https://dl.dropbox.com/s/o8eukv7vazd1umk/fanfinsal.sas7bdat" 
	out=_inbox
	/* proxyhost="http://yourproxy.company.com" */
	;
run;

filename _inbox clear;

proc contents data=work.fanfinal;
run;

