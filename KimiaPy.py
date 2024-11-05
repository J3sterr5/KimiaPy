from Func.Stoikometri_Calc import newMenuStoic

print("""
      

 
╦╔═┬┌┬┐┬┌─┐╔═╗┬ ┬
╠╩╗│││││├─┤╠═╝└┬┘
╩ ╩┴┴ ┴┴┴ ┴╩   ┴ 
    

ALL MENU:
        [1]Stoikometri
        [2]Konfigurasi Elektron
        [3]Entalpi
""")


# User Input
menuSelect = int(input("Silahkan Pilih Dari Menu Yang Tersedia: "))

# Cabang User Input
if menuSelect == 1:
    newMenuStoic()
