# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jecaudal <jecaudal@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/02 14:17:57 by jecaudal          #+#    #+#              #
#    Updated: 2020/09/08 12:48:17 by jecaudal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

telegraf --config /root/telegraf.conf

tail -f /dev/null
