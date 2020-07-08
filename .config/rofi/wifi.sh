#!/usr/bin/bash

INTERFACE="wlp6s0"

IS_GOOD="$(wpa_cli -i $INTERFACE scan)"
if [[ -z $"(echo '$IS_GOOD' | grep OK)" ]];
then
	rofi -e "Unable to Scan for Networks!"
else
	NETWORKS="$(wpa_cli -i $INTERFACE scan_results | cut -f 5 )"
	CHOSEN_NETWORK="$(echo "$NETWORKS" | rofi -dmenu -p WiFi)"
	PASSWORD="$(rofi -dmenu -p Password)"
	NETWORK_NUMBER="$(wpa_cli -i $INTERFACE add_network)"
	wpa_cli -i $INTERFACE set_network $NETWORK_NUMBER ssid "$CHOSEN_NETWORK"
	wpa_cli -i $INTERFACE set_network $NETWORK_NUMBER psk "$PASSWORD"
	IS_CONNECTED="$(wpa_cli -i $INTERFACE enable_network $NETWORK_NUMBER | grep CONNECTED)"
	if [[ -z "$IS_CONNECTED" ]];
       	then
		wpa_cli -i $INTERFACE remove_network $NETWORK_NUMBER
		rofi -e "Problem connecting..."
	else
		rofi -e "Connected to Network $CHOSEN_NETWORK"
	fi
fi
