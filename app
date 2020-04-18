

from tkinter import*
import random
import time
import datetime
import tkinter.messagebox

root=Tk()
root.geometry("1350x750+0+0")
root.title("Restaurant Management System")
root.configure(background ='Cadet Blue')

Tops=Frame(root, bg='Cadet Blue',bd=20,pady=5,relief=RIDGE)
Tops.pack(side=TOP)

localtime=time.asctime(time.localtime(time.time()))
lblTitle=Label(Tops,
               font=('aerial',60,'bold'),
               text="Restaurant Management Systems",bd=21,bg='Cadet Blue',
               fg='Cornsilk',justify=CENTER)
lblTitle.grid(row=0,column=0)

lblInfo=Label(Tops,font=('arial',20,'bold'),text=localtime,fg="Steel Blue",bd=10,anchor='w')
lblInfo.grid(row=1,column=0)

ReceiptCal_F=Frame(root, bg='Powder Blue',bd=10,relief=RIDGE)
ReceiptCal_F.pack(side=RIGHT)
Buttons_F=Frame(ReceiptCal_F,bg='Powder Blue',bd=3,relief=RIDGE)
Buttons_F.pack(side=BOTTOM)
Cal_F=Frame(ReceiptCal_F,bg='Powder Blue',bd=6,relief=RIDGE)
Cal_F.pack(side=TOP)
Receipt_F=Frame(ReceiptCal_F,bg='Powder Blue',bd=4,relief=RIDGE)
Receipt_F.pack(side=BOTTOM)

MenuFrame=Frame(root, bg='Cadet Blue',bd=10,relief=RIDGE)
MenuFrame.pack(side=LEFT)
Cost_F=Frame(MenuFrame,bg='Powder Blue',bd=4)
Cost_F.pack(side=BOTTOM)
Drinks_F=Frame(MenuFrame,bg='Cadet Blue',bd=10)
Drinks_F.pack(side=TOP)

Drinks_F=Frame(MenuFrame,bg='Powder Blue', relief=RIDGE)
Drinks_F.pack(side=LEFT)
Cake_F=Frame(MenuFrame,bg='Powder Blue',bd=10,relief=RIDGE)
Cake_F.pack(side=RIGHT)
#=====================================================================
var1=IntVar()
var2=IntVar()
var3=IntVar()
var4=IntVar()
var5=IntVar()
var6=IntVar()
var7=IntVar()
var8=IntVar()
var9=IntVar()
var10=IntVar()
var11=IntVar()
var12=IntVar()
var13=IntVar()
var14=IntVar()
var15=IntVar()
var16=IntVar()

DateofOrder=StringVar()
Receipt_Ref=StringVar()
PaidTax=StringVar()
SubTotal=StringVar()
TotalCost=StringVar()
CostofSnacks=StringVar()
CostofIce=StringVar()
ServiceCharge=StringVar()

text_Input=StringVar()
operator=""

E_Cutlet=StringVar()
E_Fried_Rice=StringVar()
E_Veg_Roll=StringVar()
E_Pasta_triangle=StringVar()
E_Dhokla=StringVar()
E_Pao_Bhaji=StringVar()
E_Dhai_Bhalla=StringVar()
E_Masala_Dosa=StringVar()


E_Butterscotch=StringVar()
E_Black_walnut=StringVar()
E_Butter_Bricle=StringVar()
E_Mango=StringVar()
E_Kulfi=StringVar()
E_Faluda=StringVar()
E_Raspberry=StringVar()
E_Coconut=StringVar()

E_Cutlet.set("0")
E_Fried_Rice.set("0")
E_Veg_Roll.set("0")
E_Pasta_triangle.set("0")
E_Dhokla.set("0")
E_Pao_Bhaji.set("0")
E_Dhai_Bhalla.set("0")
E_Masala_Dosa.set("0")


E_Butterscotch.set("0")
E_Black_walnut.set("0")
E_Butter_Bricle.set("0")
E_Mango.set("0")
E_Kulfi.set("0")
E_Faluda.set("0")
E_Raspberry.set("0")
E_Coconut.set("0")

DateofOrder.set(time.strftime("%d/%m/%y"))
#=================================================================================================================================
def iExit():
    iExit=tkinter.messagebox.askyesno("Exit Restaurant System","Confirm If You Want To Exit")
    if iExit>0:
        root.destroy()
        return
def Reset():
    PaidTax.set("")
    SubTotal.set("")
    TotalCost.set("")
    CostofIce.set("")
    CostofSnacks.set("")
    ServiceCharge.set("")
    txtReceipt.delete("1.0",END)
    
    E_Cutlet.set("0")
    E_Fried_Rice.set("0")
    E_Veg_Roll.set("0")
    E_Pasta_triangle.set("0")
    E_Dhokla.set("0")
    E_Pao_Bhaji.set("0")
    E_Dhai_Bhalla.set("0")
    E_Masala_Dosa.set("0")
    E_Butterscotch.set("0")
    E_Black_walnut.set("0")
    E_Butter_Bricle.set("0")
    E_Mango.set("0")
    E_Kulfi.set("0")
    E_Faluda.set("0")
    E_Raspberry.set("0")
    E_Coconut.set("0")
    
    var1.set("0")
    var2.set("0")
    var3.set("0")
    var4.set("0")
    var5.set("0")
    var6.set("0")
    var7.set("0")
    var8.set("0")
    var9.set("0")
    var10.set("0")
    var11.set("0")
    var12.set("0")
    var13.set("0")
    var14.set("0")
    var15.set("0")
    var16.set("0")

    txtCutlet.configure(state=DISABLED)
    txtFried_Rice.configure(state=DISABLED)
    txtPasta_triangle.configure(state=DISABLED)
    txtDhokla.configure(state=DISABLED)
    txtPao_Bhaji.configure(state=DISABLED)
    txtDhai_Bhalla.configure(state=DISABLED)
    txtMasala_Dosa.configure(state=DISABLED)
    txtVeg_Roll.configure(state=DISABLED)
    txtButterscotch.configure(state=DISABLED)
    txtBlack_walnut.configure(state=DISABLED)
    txtMango.configure(state=DISABLED)
    txtKulfi.configure(state=DISABLED)
    txtFaluda.configure(state=DISABLED)
    txtRaspberry.configure(state=DISABLED)
    txtCoconut.configure(state=DISABLED)
    
def CostofItem():
    Item1=float(E_Cutlet.get())
    Item2=float(E_Fried_Rice.get())
    Item3=float(E_Veg_Roll.get())
    Item4=float(E_Pasta_triangle.get())
    Item5=float(E_Dhokla.get())
    Item6=float(E_Pao_Bhaji.get())
    Item7=float(E_Dhai_Bhalla.get())
    Item8=float(E_Masala_Dosa.get())
    
    Item9=float(E_Butterscotch.get())
    Item10=float(E_Black_walnut.get())
    Item11=float(E_Butter_Bricle.get())
    Item12=float(E_Mango.get())
    Item13=float(E_Kulfi.get())
    Item14=float(E_Faluda.get())
    Item15=float(E_Raspberry.get())
    Item16=float(E_Coconut.get())
    
    PriceofIce=(Item9*25)+(Item10*50)+(Item11*75)+(Item12*45)+(Item13*15)+(Item14*80)+(Item15*90)+(Item16*95)
    
    PriceofSnacks=(Item1*25)+(Item2*125)+(Item3*45)+(Item4*120)+(Item5*190)+(Item6*125)+(Item7*100)+(Item8*140)
    #r='u"\u20B9"'
    Snacksprice='\u20B9',str('%.2f'%PriceofSnacks)
    IcePrice='\u20B9',str("%.2f"%PriceofIce)
    CostofSnacks.set(Snacksprice)
    CostofIce.set(IcePrice)
    
    SC='\u20B9',str("%.2f"%(1.59))
    ServiceCharge.set(SC)
    
    SubTotalofItems='\u20B9',str("%.2f"%(PriceofIce+PriceofSnacks+1.59))
    SubTotal.set(SubTotalofItems)
    
    Tax='\u20B9',str("%.2f"%((PriceofIce+PriceofSnacks+1.59)*0.15))
    PaidTax.set(Tax)
    TT=((PriceofIce+PriceofSnacks+1.59)*0.15)
    TC='\u20B9',str("%.2f"%(PriceofIce+PriceofSnacks+1.59+TT))
    TotalCost.set(TC)
    
def chkCutlet():
    if (var1.get()==1):
        txtCutlet.configure(state=NORMAL)
        txtCutlet.focus()
        txtCutlet.delete('0',END)
        E_Cutlet.set("")
    elif(var1.get()==0):
        txtCutlet.configure(state=DISABLED)
        E_Cutlet.set("0")
def chkFried_Rice():
    if (var2.get()==1):
        txtFried_Rice.configure(state=NORMAL)
        txtFried_Rice.focus()
        txtFried_Rice.delete('0',END)
        E_Fried_Rice.set("")
    elif(var2.get()==0):
        txtFried_Rice.configure(state=DISABLED)
        E_Fried_Rice.set("0")
def chkVeg_Roll():
    if (var3.get()==1):
        txtVeg_Roll.configure(state=NORMAL)
        txtVeg_Roll.focus()
        txtVeg_Roll.delete('0',END)
        E_Veg_Roll.set("")
    elif(var3.get()==0):
        txtVeg_Roll.configure(state=DISABLED)
        E_Veg_Roll.set("0")
def chkPasta_triangle():
    if (var4.get()==1):
        txtPasta_triangle.configure(state=NORMAL)
        txtPasta_triangle.focus()
        txtPasta_triangle.delete('0',END)
        E_Pasta_triangle.set("")
    elif(var4.get()==0):
        txtPasta_triangle.configure(state=DISABLED)
        E_Pasta_triangle.set("0")
def chkDhokla():
    if (var5.get()==1):
        txtDhokla.configure(state=NORMAL)
        txtDhokla.focus()
        txtDhokla.delete('0',END)
        E_Dhokla.set("")
    elif(var5.get()==0):
        txtDhokla.configure(state=DISABLED)
        E_Dhokla.set("0")
def chkPao_Bhaji():
    if (var6.get()==1):
        txtPao_Bhaji.configure(state=NORMAL)
        txtPao_Bhaji.focus()
        txtPao_Bhaji.delete('0',END)
        E_Pao_Bhaji.set("")
    elif(var6.get()==0):
        txtPao_Bhaji.configure(state=DISABLED)
        E_Pao_Bhaji.set("0")
def chkDhai_Bhalla():
    if (var7.get()==1):
        txtDhai_Bhalla.configure(state=NORMAL)
        txtDhai_Bhalla.focus()
        txtDhai_Bhalla.delete('0',END)
        E_Dhai_Bhalla.set("")
    elif(var7.get()==0):
        txtDhai_Bhalla.configure(state=DISABLED)
        E_Dhai_Bhalla.set("0")
def chkMasala_Dosa():
    if (var8.get()==1):
        txtMasala_Dosa.configure(state=NORMAL)
        txtMasala_Dosa.focus()
        txtMasala_Dosa.delete('0',END)
        E_Masala_Dosa.set("")
    elif(var8.get()==0):
        txtMasala_Dosa.configure(state=DISABLED)
        E_Masala_Dosa.set("0")
        
        
        
def chkButterscotch():
    if (var9.get()==1):
        txtButterscotch.configure(state=NORMAL)
        txtButterscotch.focus()
        txtButterscotch.delete('0',END)
        E_Butterscotch.set("")
    elif(var9.get()==0):
        txtButterscotch.configure(state=DISABLED)
        E_Butterscotch.set("0")
def chkBlack_walnut():
    if (var10.get()==1):
        txtBlack_walnut.configure(state=NORMAL)
        txtBlack_walnut.focus()
        txtBlack_walnut.delete('0',END)
        E_Black_walnut.set("")
    elif(var10.get()==0):
        txtBlack_walnut.configure(state=DISABLED)
        E_Black_walnut.set("0")
def chkButter_Bricle():
    if (var11.get()==1):
        txtButter_Bricle.configure(state=NORMAL)
        txtButter_Bricle.focus()
        txtButter_Bricle.delete('0',END)
        E_Butter_Bricle.set("")
    elif(var11.get()==0):
        txtButter_Bricle.configure(state=DISABLED)
        E_Butter_Bricle.set("0")
def chkMango():
    if (var12.get()==1):
        txtMango.configure(state=NORMAL)
        txtMango.focus()
        txtMango.delete('0',END)
        E_Mango.set("")
    elif(var12.get()==0):
        txtMango.configure(state=DISABLED)
        E_Mango.set("0")
def chkKulfi():
    if (var13.get()==1):
        txtKulfi.configure(state=NORMAL)
        txtKulfi.focus()
        txtKulfi.delete('0',END)
        E_Kulfi.set("")
    elif(var13.get()==0):
        txtKulfi.configure(state=DISABLED)
        E_Kulfi.set("0")
def chkFaluda():
    if (var14.get()==1):
        txtFaluda.configure(state=NORMAL)
        txtFaluda.focus()
        txtFaluda.delete('0',END)
        E_Faluda.set("")
    elif(var14.get()==0):
        txtFaluda.configure(state=DISABLED)
        E_Faluda.set("0")
def chkRaspberry():
    if (var15.get()==1):
        txtRaspberry.configure(state=NORMAL)
        txtRaspberry.focus()
        txtRaspberry.delete('0',END)
        E_Raspberry.set("")
    elif(var15.get()==0):
        txtRaspberry.configure(state=DISABLED)
        E_Raspberry.set("0")
def chkCoconut():
    if (var16.get()==1):
        txtCoconut.configure(state=NORMAL)
        txtCoconut.focus()
        txtCoconut.delete('0',END)
        E_Coconut.set("")
    elif(var16.get()==0):
        txtCoconut.configure(state=DISABLED)
        E_Coconut.set("0")
def Receipt():
    txtReceipt.delete("1.0",END)
    x=random.randint(10900,609235)
    randomRef=str(x)
    Receipt_Ref.set("BILL"+randomRef)
    
    txtReceipt.insert(END, 'Receipt Ref:\t\t\t'+Receipt_Ref.get()+'\t'+DateofOrder.get()+"\n")
    txtReceipt.insert(END, 'Items:\t\t\t'+"Cost of Items\n")
    txtReceipt.insert(END, 'Cutlet:\t\t\t'+E_Cutlet.get()+"\n")
    txtReceipt.insert(END, 'Fried Rice:\t\t\t'+E_Fried_Rice.get()+"\n")
    txtReceipt.insert(END, 'Veg Roll:\t\t\t'+E_Veg_Roll.get()+"\n")
    txtReceipt.insert(END, 'Pasta Triangle:\t\t\t'+E_Pasta_triangle.get()+"\n")
    txtReceipt.insert(END, 'Dhokla:\t\t\t'+E_Dhokla.get()+"\n")
    txtReceipt.insert(END, 'Pao Bhaji:\t\t\t'+E_Pao_Bhaji.get()+"\n")
    txtReceipt.insert(END, 'Dhai Bhalla:\t\t\t'+E_Dhai_Bhalla.get()+"\n")
    txtReceipt.insert(END, 'Masala Dosa:\t\t\t'+E_Masala_Dosa.get()+"\n")
    txtReceipt.insert(END, 'Butterscotch:\t\t\t'+E_Butterscotch.get()+"\n")
    txtReceipt.insert(END, 'Butter walnut:\t\t\t'+E_Butter_walnut.get()+"\n")
    txtReceipt.insert(END, 'Butter Bicle:\t\t\t'+E_Butter_Bicle.get()+"\n")
    txtReceipt.insert(END, 'Mango:\t\t\t'+E_Mango.get()+"\n")
    txtReceipt.insert(END, 'Kulfi:\t\t\t'+E_Kulfi.get()+"\n")
    txtReceipt.insert(END, 'Faluda:\t\t\t'+E_Faluda.get()+"\n")
    txtReceipt.insert(END, 'Raspberry:\t\t\t'+E_Raspberry.get()+"\n")
    txtReceipt.insert(END, 'Cost of Snacks:\t\t\t'+E_CostofSnacks.get()+'\nPaid Tax:\t\t\t'+str(PaidTax.get())+"\n")
    txtReceipt.insert(END, 'Cost of IceCreams:\t\t\t'+E_CostofIce.get()+'\nSub Total:\t\t\t'+str(SubTotal.get())+"\n")
    txtReceipt.insert(END, 'Service Charge:\t\t\t'+E_ServiceCharge.get()+'\nTotal Cost:\t\t\t'+str(TotalCost.get))
            
#================================Snacks==========================================================================================
Cutlet=Checkbutton(Drinks_F,text="Cutlet\t\t",variable=var1, onvalue=1, offvalue=0,font=('arial',14,'bold'),
                  bg='Powder Blue',command=chkCutlet).grid(row=0,sticky=W)
Fried_Rice=Checkbutton(Drinks_F,text="Fried Rice",variable=var2, onvalue=1, offvalue=0,font=('arial',14,'bold'),
                  bg='Powder Blue',command=chkFried_Rice).grid(row=1,sticky=W)
Veg_Roll=Checkbutton(Drinks_F,text="Veg Roll",variable=var3, onvalue=1, offvalue=0,font=('arial',14,'bold'),
                  bg='Powder Blue',command=chkVeg_Roll).grid(row=2,sticky=W)
Pasta_triangle=Checkbutton(Drinks_F,text="Pasta Triangle\t\t",variable=var4, onvalue=1, offvalue=0,font=('arial',14,'bold'),
                  bg='Powder Blue',command=chkPasta_triangle).grid(row=3,sticky=W)
Dhokla=Checkbutton(Drinks_F,text="Dhokla",variable=var5, onvalue=1, offvalue=0,font=('arial',14,'bold'),
                  bg='Powder Blue',command=chkDhokla).grid(row=4,sticky=W)
Pao_Bhaji=Checkbutton(Drinks_F,text="Pao Bhaji",variable=var6, onvalue=1, offvalue=0,font=('arial',14,'bold'),
                  bg='Powder Blue',command=chkPao_Bhaji).grid(row=5,sticky=W)
Dhai_Bhalla=Checkbutton(Drinks_F,text="Dhai Bhalla",variable=var7, onvalue=1, offvalue=0,font=('arial',14,'bold'),
                  bg='Powder Blue',command=chkDhai_Bhalla).grid(row=6,sticky=W)
Masala_Dosa=Checkbutton(Drinks_F,text="Masala Dosa",variable=var8, onvalue=1, offvalue=0,font=('arial',14,'bold'),
                  bg='Powder Blue',command=chkMasala_Dosa).grid(row=7,sticky=W)
 
#================================Entry for Snacks==========================================================================================


txtCutlet=Entry(Drinks_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Cutlet)
txtCutlet.grid(row=0,column=1)

txtFried_Rice=Entry(Drinks_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Fried_Rice)
txtFried_Rice.grid(row=1,column=1)

txtVeg_Roll=Entry(Drinks_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Veg_Roll)
txtVeg_Roll.grid(row=2,column=1)

txtPasta_triangle=Entry(Drinks_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Pasta_triangle)
txtPasta_triangle.grid(row=3,column=1)

txtDhokla=Entry(Drinks_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Dhokla)
txtDhokla.grid(row=4,column=1)

txtPao_Bhaji=Entry(Drinks_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Pao_Bhaji)
txtPao_Bhaji.grid(row=5,column=1)

txtDhai_Bhalla=Entry(Drinks_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Dhai_Bhalla)
txtDhai_Bhalla.grid(row=6,column=1)

txtMasala_Dosa=Entry(Drinks_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Masala_Dosa)
txtMasala_Dosa.grid(row=7,column=1)

#================================Ice creams==========================================================================================

Butterscotch=Checkbutton(Cake_F,text="Butterscotch",variable=var9, onvalue=1, offvalue=0,font=('arial',12,'bold'),
                  bg='Powder Blue',command=chkButterscotch).grid(row=0,sticky=W)
Black_walnut=Checkbutton(Cake_F,text="Black Walnut",variable=var10, onvalue=1, offvalue=0,font=('arial',12,'bold'),
                  bg='Powder Blue',command=chkBlack_walnut).grid(row=1,sticky=W)
Butter_Bricle=Checkbutton(Cake_F,text="Butter Bricle",variable=var11, onvalue=1, offvalue=0,font=('arial',12,'bold'),
                  bg='Powder Blue',command=chkButter_Bricle).grid(row=2,sticky=W)
Mango=Checkbutton(Cake_F,text="Mango Icecream",variable=var12, onvalue=1, offvalue=0,font=('arial',12,'bold'),
                  bg='Powder Blue',command=chkMango).grid(row=3,sticky=W)
Kulfi=Checkbutton(Cake_F,text="Kulfi",variable=var13, onvalue=1, offvalue=0,font=('arial',12,'bold'),
                  bg='Powder Blue',command=chkKulfi).grid(row=4,sticky=W)
Faluda=Checkbutton(Cake_F,text="Faluda Icecream",variable=var14, onvalue=1, offvalue=0,font=('arial',12,'bold'),
                  bg='Powder Blue',command=chkFaluda).grid(row=5,sticky=W)
Raspberry=Checkbutton(Cake_F,text="Raspberry Ripple",variable=var15, onvalue=1, offvalue=0,font=('arial',12,'bold'),
                  bg='Powder Blue',command=chkRaspberry).grid(row=6,sticky=W)
Coconut=Checkbutton(Cake_F,text="Coconut Icecream\t\t\t\t",variable=var16, onvalue=1, offvalue=0,font=('arial',12,'bold'),
                  bg='Powder Blue',command=chkCoconut).grid(row=7,sticky=W)

#================================Entry box for Ice creams==========================================================================================

txtButterscotch=Entry(Cake_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Butterscotch)
txtButterscotch.grid(row=0,column=1)

txtBlack_walnut=Entry(Cake_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Black_walnut)
txtBlack_walnut.grid(row=1,column=1)

txtButter_Bricle=Entry(Cake_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Butter_Bricle)
txtButter_Bricle.grid(row=2,column=1)

txtMango=Entry(Cake_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Mango)
txtMango.grid(row=3,column=1)

txtKulfi=Entry(Cake_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Kulfi)
txtKulfi.grid(row=4,column=1)

txtFaluda=Entry(Cake_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Faluda)
txtFaluda.grid(row=5,column=1)

txtRaspberry=Entry(Cake_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Raspberry)
txtRaspberry.grid(row=6,column=1)

txtCoconut=Entry(Cake_F,font=('arial',14,'bold'),bd=8,width=6, justify=LEFT, state=DISABLED,textvariable=E_Coconut)
txtCoconut.grid(row=7,column=1)
#===============================Total cost==================================================================
lblCostofSnacks=Label(Cost_F,font=('arial',14,'bold'), text="Cost of Snacks\t",bg='powder blue',
                fg='black')
lblCostofSnacks.grid(row=0,column=0,sticky=W)
txtCostofSnacks=Entry(Cost_F,font=('arial',14,'bold'),textvariable=CostofSnacks, bg="white" ,bd=7,insertwidth=2,justify=RIGHT)
txtCostofSnacks.grid(row=0,column=1)

lblCostofIce=Label(Cost_F,font=('arial',14,'bold'), text="Cost of IceCreams\t",bg='powder blue',
                fg='black')
lblCostofIce.grid(row=1,column=0,sticky=W)
txtCostofIce=Entry(Cost_F,font=('arial',14,'bold'),textvariable=CostofIce, bg="white" ,bd=7,insertwidth=2,justify=RIGHT)
txtCostofIce.grid(row=1,column=1)

lblServiceCharge=Label(Cost_F,font=('arial',14,'bold'), text="Service Charge\t",bg='powder blue',
                fg='black')
lblServiceCharge.grid(row=2,column=0,sticky=W)
txtServiceCharge=Entry(Cost_F,font=('arial',14,'bold'),textvariable=ServiceCharge,bg="white" ,bd=7,insertwidth=2,justify=RIGHT)
txtServiceCharge.grid(row=2,column=1)

#=====================================Payment Information==========================================================================
lblPaidTax=Label(Cost_F,font=('arial',14,'bold'),text='Paid Tax',bd=7,bg='powder blue',fg='black')
lblPaidTax.grid(row=0,column=2,sticky=W)
txtPaidTax=Entry(Cost_F,font=('arial',12,'bold'),textvariable=PaidTax,bg="white",insertwidth=2 ,bd=7,justify=RIGHT)
txtPaidTax.grid(row=0,column=3)

lblSubTotal=Label(Cost_F,font=('arial',14,'bold'),text='Sub Total\t\t',bd=7,bg='powder blue',fg='black')
lblSubTotal.grid(row=1,column=2,sticky=W)
txtSubTotal=Entry(Cost_F,font=('arial',12,'bold'),textvariable=SubTotal,insertwidth=2,bg="white" ,bd=7,justify=RIGHT)
txtSubTotal.grid(row=1,column=3)

lblTotalCost=Label(Cost_F,font=('arial',14,'bold'),text='Total Cost',bd=7,bg='powder blue',fg='black')
lblTotalCost.grid(row=2,column=2,sticky=W)
txtTotalCost=Entry(Cost_F,font=('arial',12,'bold'),textvariable=TotalCost,bg="white" ,insertwidth=2,bd=7,justify=RIGHT)
txtTotalCost.grid(row=2,column=3)





#============================Receipt==========================================================================

txtReceipt=Text(Receipt_F,width=46, height=12, bg="white" ,bd=4,font=('arial',12,'bold'))
txtReceipt.grid(row=0,column=0)


#============================Button==========================================================================
btnTotal=Button(Buttons_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="Total",
                bg="powder blue",command=CostofItem).grid(row=0,column=0)
btnReceipt=Button(Buttons_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="Receipt",
                bg="powder blue",command=Receipt).grid(row=0,column=1)
btnReset=Button(Buttons_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="Reset",
                bg="powder blue",command=Reset).grid(row=0,column=2)
btnExit=Button(Buttons_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="Exit",
                bg="powder blue",command=iExit).grid(row=0,column=3)
#=========================Calculator Display=========================================================================================================

def btnClick(numbers):
    global operator
    operator=operator+str(numbers)
    text_Input.set(operator)
    
def btnClear():
    global operator
    operator=""
    text_Input.set("")
def btnEquals():
    global operator
    sumup=str(eval(operator))
    text_Input.set(sumup)
    operator=""
'''
txtDisplay=Entry(Cal_F,width=45,bg='white',bd=4,font=('arial',12,'bold'),justify=RIGHT,textvariable=text_input)
txtDisplay.grid(row=0,column=0,columnspan=4,pady=1)
txtDisplay.insert(0,"0")
'''



#========================Calculator Display=========================================================================================
txtDisplay=Entry(Cal_F,width=45, bg="white" ,bd=4,font=('arial',12,'bold'),justify=RIGHT,textvariable=text_Input)
txtDisplay.grid(row=0,column=0,columnspan=4,pady=1)
txtDisplay.insert(0,"0")
#============================Calculator Button==========================================================================
btn7=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="7",
                bg="powder blue",command=lambda:btnClick(7)).grid(row=2,column=0)
btn8=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="8",
                bg="powder blue",command=lambda:btnClick(8)).grid(row=2,column=1)
btn9=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="9",
                bg="powder blue",command=lambda:btnClick(9)).grid(row=2,column=2)
btnAdd=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="+",
                bg="powder blue",command=lambda:btnClick("+")).grid(row=2,column=3)

#============================Calculator Button==========================================================================
btn4=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="4",
               command=lambda:btnClick(4) ).grid(row=3,column=0)
btn5=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="5",
                command=lambda:btnClick(5) ).grid(row=3,column=1)
btn6=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="6",
                command=lambda:btnClick(6) ).grid(row=3,column=2)
btnSub=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="-",
                bg="powder blue",command=lambda:btnClick("-")).grid(row=3,column=3)
#============================Calculator Button==========================================================================
btn1=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="1",
                command=lambda:btnClick(1) ).grid(row=4,column=0)
btn2=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="2",
               command=lambda:btnClick(2) ).grid(row=4,column=1)
btn3=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="3",
               command=lambda:btnClick(3) ).grid(row=4,column=2)
btnMulti=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="*",
                bg="powder blue",command=lambda:btnClick("*")).grid(row=4,column=3)

#============================Calculator Button==========================================================================
btn0=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="0",
                bg="powder blue",command=lambda:btnClick(0)).grid(row=5,column=0)
btnClear=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="C",
                bg="powder blue",command=btnClear).grid(row=5,column=1)
btnEquals=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="=",
                bg="powder blue",command=btnEquals).grid(row=5,column=2)
btnDiv=Button(Cal_F,padx=16,pady=1,bd=7,fg="black",font=('arial',16,'bold'),width=4,text="/",
                bg="powder blue",command=lambda:btnClick("/")).grid(row=5,column=3)






root.mainloop()
