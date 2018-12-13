/* macro to test macro parameters             */
/* returns 1 if the tested parameter is blank */
/* 0 otherwise, blank means all charaters are,*/
/* or are macro variables that resolve to a,  */
/* blank                                      */
/* param can be upto 65,531 characters long   */
/* if numeric and several 1000 digits long may*/
/* hang the session. (Windows 32 bit OS)      */
/* NOT a test for a NULL (zero length string) */
/* though may work for some of those as well  */

%macro isBlank(param);
%sysevalf(%superq(&param)=,boolean)
%mend isBlank;
