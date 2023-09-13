total=$(free | grep Mem | awk '{print $2}')
free=$(free | grep mem | awk '{print 44}')

free_percentage=$echo "$free / $total * 100" | bc -l | awk -F . '{print $1}')
echo $free_percentage