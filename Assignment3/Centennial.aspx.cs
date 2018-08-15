using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment3
{
    
    public partial class Centennial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // province textbox automatically converts to upper case
        protected void province_TextChanged(object sender, EventArgs e)
        {
            province.Text = province.Text.ToUpper();
        }
        // when the register button is clicked
        protected void register_Click(object sender, EventArgs e)
        {
            // check if the page is valid
            if (Page.IsValid)
            {
                // assign user inputs to variables
                String firstName_s = fName.Text;
                String lastName_s = lName.Text;
                String address_s = address.Text;
                String city_s = city.Text;
                String province_s = province.Text;
                String postalCode_s = postalCode.Text;
                String age_s = age.Text;
                String password_s = password.Text;
                String cPassword_s = rePassword.Text;
                String email_s = email.Text;
                String aEmail_s = alterEmail.Text;
                String phone_s = phone.Text;

                // show alert message when registeration completed
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox1", "alert('" + firstName_s + " " + lastName_s + " Thanks for registering with our website, your record was created successfully.');", true);

                //  if the enter another member check box checked show the registeraion completion msg and clear all the text boxes
                if (CheckBox.Checked == true)
                {
                    // while loop to allow the user to register another member
                    while (true)
                    {
                        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox1", "alert('" + firstName_s + " " + lastName_s + " Thanks for registering with our website, your record was created successfully.');", true);

                        ClearTextBoxs(Page.Controls);
                                              
                         break; 

                    }
                }
      
            }

        }
        // clear all the texboxes
        private void ClearTextBoxs(ControlCollection ctrls)
        {
            foreach (Control c in ctrls)
            {
                if (c is TextBox)
                    ((TextBox)c).Text = string.Empty;

                ClearTextBoxs(c.Controls);
            }
        }
        // when the clear button is clicked
        protected void clear_Click(object sender, EventArgs e)
        {
            ClearTextBoxs(Page.Controls);

        }


    }
}