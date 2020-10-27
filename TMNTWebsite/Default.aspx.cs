using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMNTWebsite
{
    public partial class Default : System.Web.UI.Page
    {

        // I'm changing up the design to update automatically to be more user-friendly.

        // Price vars
        float sizePrice = 0f;
        float crustPrice = 0f;
        float toppingsPrice = 0f;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Do update on page load to set output to 0
            if (!Page.IsPostBack)
            {
                Size_Changed(null, null);
                Crust_Changed(null, null);
                Toppings_Changed(null, null);
            }
        }


        // Extra cases not needed as website has default states
        protected void Size_Changed(object sender, EventArgs e)
        {
            // If small, £10, else if medium, £13, else £16
            sizePrice = smallRadioButton.Checked ? 10.00f : (mediumRadioButton.Checked ? 13.00f : 16.00f);
            // Update output label
            Update_Total();
        }

        protected void Crust_Changed(object sender, EventArgs e)
        {
            // Getting crust type price
            crustPrice = thinRadioButton.Checked ? 0.00f : 2.00f;
            // Update output label
            Update_Total();
        }

        protected void Toppings_Changed(object sender, EventArgs e)
        {
            toppingsPrice = 0.00f;
            // Ternary operator adds cost if ingredient box is checked
            toppingsPrice += pepperoniCheckBox.Checked ? 1.50f : 0f;
            toppingsPrice += onionsCheckBox.Checked ? 0.75f : 0f;
            toppingsPrice += greenPeppersCheckBox.Checked ? 0.50f : 0f;
            toppingsPrice += redPeppersCheckBox.Checked ? 0.75f : 0f;
            toppingsPrice += anchoviesCheckBox.Checked ? 2.00f : 0f;
            // Update output label
            Update_Total();
        }

        protected void Update_Total()
        {
            float total = sizePrice + crustPrice + toppingsPrice;

            // Checking for special offer. This is not a good solution at all but it is all the task requires. Ideally would use OOP to have an "Offer" object containing the requirements.
            if(pepperoniCheckBox.Checked && greenPeppersCheckBox.Checked && anchoviesCheckBox.Checked ||
                pepperoniCheckBox.Checked && redPeppersCheckBox.Checked && onionsCheckBox.Checked)
            {
                total -= 2.00f;
            }

            // Updating the output label
            totalLabel.Text = "£" + total.ToString();
        }

        protected void PurchaseButton(object sender, EventArgs e)
        {
            // No actual order/purchase system, just provide some user feedback to indicate such
            doneLabel.Text = "Sorry, at this time you can only order one pizza online, and pick-up only... we need a better website!";
        }
    }
}