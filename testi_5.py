#-*- coding: cp1252 -*-

import random
	
def arvonta(valinta):
	int=random.randint(1,3)
	if int==1:
		kone="Jalka"
	elif int==2:
		kone="Ydinase"
	elif int==3:
		kone="Torakka"
	print("tietokone valitsi:",kone)
	if kone==valinta:
		return 2
	if kone=="Jalka":
		if valinta=="Torakka":
			return 0
		else:
			return 1
	elif kone=="Torakka":
		if valinta=="Ydinase":
			return 0
		else:
			return 1
	elif kone=="Ydinase":
		if valinta=="Jalka":
			return 0
		else:
			return 1
	
	
	
def main():
	jatkuu=True
	voitot=0
	tappiot=0
	tasapelit=0
	pelit=0
	while jatkuu:
		valinta=input("Jalka, Ydinase vai Torakka? (Lopeta lopettaa):")
		if valinta=="Lopeta":
			jatkuu=False
		else:
			pelit=pelit+1
			print("Sinä valitsit:",valinta)
			tulos=int(arvonta(valinta))
			if tulos==1:
				voitot=voitot+1
				print("Voitit!")
			elif tulos==0:
				tappiot=tappiot+1
				print("Hävisit!")
			else:
				tasapelit=tasapelit+1
				print("Tasapeli!")
	print("Pelasit",pelit,"kierrosta,joista voitit",voitot,"ja pelasit tasan",tasapelit,"peliä.")
		
				  
if __name__ == "__main__":
    main()
