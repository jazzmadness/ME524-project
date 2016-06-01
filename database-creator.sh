#!/usr/bin/expect
spawn sqlite3 "train.sqlite3"
send "create table train(date_time, site_name, posa_continent, user_location_country, user_location_region, user_location_city, orig_destination_distance, user_id, is_mobile, is_package, channel, srch_ci, srch_co, srch_adults_cnt, srch_children_cnt, srch_rm_cnt, srch_destination_id, srch_destination_type_id, is_booking, cnt, hotel_continent, hotel_country, hotel_market, hotel_cluster);\n"
send ".mode csv\n"
send ".headers off\n"
send ".separator ,\n"
send ".import train.csv train\n"
send ".exit\n"
interact
# por o arquivo train.csv na mesma pasta desse script
# executar no terminal
# instalar expect
# chmod +x database-creator.sh