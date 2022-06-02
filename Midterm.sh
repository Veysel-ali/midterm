#1
banner Welcome to My Recon Project 
#2
echo "Enter domain"
read a
#3
nslookup a
nslookup a > read.txt
#4
echo "WHOIS Result"
 whois $a
whois $a >> read.txt

dig $a
dig $a >> read.txt

#5
python3  SubDomainizer.py  -u  $a
python3  SubDomainizer.py  -u  $a >>domain.txt

emailharvester $a
