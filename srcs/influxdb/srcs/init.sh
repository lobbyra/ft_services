# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jecaudal <jecaudal@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/25 18:06:13 by jecaudal          #+#    #+#              #
#    Updated: 2020/09/06 12:44:50 by jecaudal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# --- Env variables
# INFLUX_ADM_PASS <- InfluxDB admin password.
# INFLUX_TELE_PASS <- Telegram account password in influxDB.

openrc
touch /run/openrc/softlevel
service influxdb start 
sleep 2
influx << EOF
CREATE USER admin WITH PASSWORD '$INFLUX_ADM_PASS' WITH ALL PRIVILEGES;
CREATE DATABASE telegraf;
CREATE USER user_telegraf WITH PASSWORD '$INFLUX_TELE_PASS';
GRANT ALL ON telegraf TO user_telegraf;
EOF

tail -f /dev/null
