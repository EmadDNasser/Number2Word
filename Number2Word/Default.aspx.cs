using System;

namespace Number2Word
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue=="SYP")
            {
                CurrencyInfo c = new CurrencyInfo(CurrencyInfo.Currencies.SYP);
                Decimal Number = Decimal.Parse(NunberTxt.Text);
                string Word = new Num2Wrd(Number, c).ConvertToArabic();
                WordTxtAr.Text = Word + " فقط لا غير";

                string Word1 = new Num2Wrd(Number, c).ConvertToEnglish();
                WordTxtEn.Text = Word1;

            }
            else if (DropDownList1.SelectedValue == "USD")
            {
                CurrencyInfo c = new CurrencyInfo(CurrencyInfo.Currencies.USD);
                Decimal Number = Decimal.Parse(NunberTxt.Text);
                string Word = new Num2Wrd(Number, c).ConvertToArabic();
                WordTxtAr.Text = Word + " فقط لا غير";

                string Word1 = new Num2Wrd(Number, c).ConvertToEnglish();
                WordTxtEn.Text = Word1;

            }
            else if (DropDownList1.SelectedValue == "EUR")
            {
                CurrencyInfo c = new CurrencyInfo(CurrencyInfo.Currencies.EUR);
                Decimal Number = Decimal.Parse(NunberTxt.Text);
                string Word = new Num2Wrd(Number, c).ConvertToArabic();
                WordTxtAr.Text = Word + " فقط لا غير";

                string Word1 = new Num2Wrd(Number, c).ConvertToEnglish();
                WordTxtEn.Text = Word1;

            }

        }

    }
}