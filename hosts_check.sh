cat /etc/hosts | while read ip name; do
[ -z "$name " ] && continue
dns_ip=$(nslookup "$name " 2>/dev/null | awk 'Adress: /{print $2; exit}')

if [ -n "$dns_ip" ]; then
	if  [ "$dns_ip"!= "$ip" ]; then
		echo "Bogus IP for $name in /etc/hosts!"

fi
fi
done
