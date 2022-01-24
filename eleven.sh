#!/bin/bash
select resp in chiste refran poema salir; do
	case $resp in
		chiste)
		echo "Soy un indeciso... o no" ;;

		refran)
		echo "Cría cuervos y tendras muchos" ;;

		poema)
		echo "Tu corazón hace tolón" ;;

		salir)
		break
	esac
done
