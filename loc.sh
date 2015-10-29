:

if [[ ! $1 ]]; then
  echo "USAGE: loc.sh [IPv4 Address] --Example: loc.sh 8.8.8.8"
else
curl -s https://freegeoip.net/csv/$1 | while IFS=',' read IP CountryAbbr Country StateAbbr State City Zip TimeZone Lattitude Longitude MetroCode; do
  echo "IP: $IP"
  echo "Country Abbr: $CountryAbbr"
  echo "Country: $Country"
  echo "State Abbr: $StateAbbr"
  echo "State: $State"
  echo "City: $City"
  echo "Zip: $Zip"
  echo "Time Zone: $TimeZone"
  echo "Lattitude: $Lattitude"
  echo "Longitude: $Longitude"
  echo "Metro Code: $MetroCode"
done
fi
