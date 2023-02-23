###BASH CODE TO DEFINE & WGET ALL FILES IF THEY EXIST 

#define TZ as HST
TZ=Pacific/Honolulu 

#define filedate year_month of yesterday
fileDate=$(date --date="1 day ago" +"%Y_%m") 

#define master dir
pathMaster=$'preliminary/' 

#define url
urlMaster=$'https://ikeauth.its.hawaii.edu/files/v2/download/public/system/ikewai-annotated-data/HCDP/workflow_data/'

#define files
NWS_daily_rf=$pathMaster'working_data/nws_rr5/'$fileDate'_nws_daily_rf.csv'
Hads_daily_rf=$pathMaster'working_data/hads/'$fileDate'_hads_daily_rf.csv'
Madis_daily_rf=$pathMaster'working_data/madis/'$fileDate'_madis_daily_rf.csv'
RF_source=$pathMaster'data_outputs/tables/station_data/daily/source/statewide/Statewide_Daily_Source_'$fileDate'.csv'
RF_raw=$pathMaster'data_outputs/tables/station_data/daily/raw/statewide/Statewide_Raw_Daily_RF_mm_'$fileDate'.csv'
QAQC_flag=$pathMaster'data_outputs/tables/station_data/daily/qc_flag/statewide/Statewide_RF_QAQC_Daily_Bad_Flag_'$fileDate'.csv'
QAQC_prob=$pathMaster'data_outputs/tables/station_data/daily/qc_prob/statewide/Statewide_RF_QAQC_Daily_Bad_Prob_'$fileDate'.csv'
QAQC_fail=$pathMaster'data_outputs/tables/rf_station_tracking/qaqc_fail/'$fileDate'_qaqc_fail_daily_rf.csv'
QAQC_raw=$pathMaster'data_outputs/tables/station_data/daily/raw_qc/statewide/Statewide_QAQC_Raw_Daily_RF_mm_'$fileDate'.csv'
RF_fill=$pathMaster'data_outputs/tables/station_data/daily/partial_filled/statewide/Statewide_Partial_Filled_Daily_RF_mm_'$fileDate'.csv'
Fill_log=$pathMaster'data_outputs/tables/rf_station_tracking/gapFilling/'$fileDate'_gap_fill_log_daily_rf.csv'
RF_unknown=$pathMaster'data_outputs/tables/rf_station_tracking/missing/'$fileDate'_unknown_rf_sta.csv'
Count_log=$pathMaster'data_outputs/tables/rf_station_tracking/count/'$fileDate'_count_log_daily_rf.csv'
Last_RF=$pathMaster'data_outputs/tables/rf_station_tracking/lastObs/lastRFdayObs.csv'

#set dir
cd /home/hawaii_climate_products_container

#wget files and put in proper dir locations
wget -P './'$NWS_daily_rf $urlMaster$NWS_daily_rf
wget -P './'$Hads_daily_rf $urlMaster$Hads_daily_rf
wget -P './'$Madis_daily_rf $urlMaster$Madis_daily_rf
wget -P './'$RF_source $urlMaster$RF_source
wget -P './'$RF_raw $urlMaster$RF_raw
wget -P './'$QAQC_flag $urlMaster$QAQC_flag
wget -P './'$QAQC_prob $urlMaster$QAQC_prob
wget -P './'$QAQC_fail $urlMaster$QAQC_fail
wget -P './'$QAQC_raw $urlMaster$QAQC_raw
wget -P './'$RF_fill $urlMaster$RF_fill
wget -P './'$Fill_log $urlMaster$Fill_log
wget -P './'$RF_unknown $urlMaster$RF_unknown
wget -P './'$Count_log $urlMaster$Count_log
wget -P './'$Last_RF $urlMaster$Last_RF

##PAU##