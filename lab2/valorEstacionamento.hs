main = do
	entrada <- getLine 
	if entrada == "moto" then print 5
	else if entrada == "carro" then print 10
	else print 30
	
