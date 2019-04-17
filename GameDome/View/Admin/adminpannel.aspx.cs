﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GameDome.Model;

namespace GameDome.View.Admin
{
    public partial class adminpannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LinkButton3.Visible = false;

            }
           // Session["admin_id"] = 1;
            if (Session["admin_id"] != null)
            {
                selectdata sd = new selectdata();
                Label1.Text = sd.returnscalar("select ad_email from tbl_admin where ad_id=" + Session["admin_id"]);
                TextBox2.Text = System.DateTime.Now.ToShortDateString();
                MultiView1.ActiveViewIndex = 0;

            }
            else
            {
                Response.Redirect("~/View/Admin/login.aspx");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            float c = Convert.ToInt64(TextBox3.Text);
            product p = new product();
            p.pro_name = TextBox1.Text;
            p.pro_date = TextBox2.Text;
            p.pro_price = c;
            p.pro_img = img_upload(FileUpload1, Session["admin_id"].ToString());
            p.pro_catid_fk = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            p.pro_adminid_fk = Convert.ToInt32(Session["admin_id"].ToString());
            insert i = new insert();
            ViewState["ad_id"] = i.insert_tblproduct(p);
            if (ViewState["ad_id"].ToString() == "-1")
            {
                Label2.Text = "TRY AGAIN.";
            }
            else
            {
                Label2.Text = "Posted Successfully!";
                LinkButton3.Visible = true;
                TextBox1.Text = " ";
                TextBox3.Text = " ";

               // Response.Redirect("~/View/Admin/adminpannel.aspx");




            }
        }


        public string img_upload(FileUpload FileUpload1, string id)
        {
            string s = " ";
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".png" && fileExtension.ToLower() != ".jpg")
                {
                    Label2.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "Only files with .doc and .docx extension are allowed";
                }
                else
                {
                    // Get the file size
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    // If file size is greater than 2 MB
                    if (fileSize > 2097152)
                    {
                        Label2.ForeColor = System.Drawing.Color.Red;
                        Label2.Text = "File size cannot be greater than 2 MB";
                    }
                    else
                    {
                        Random r = new Random();
                        int x = r.Next(0, 100000);
                        s = "~/images/" + id.ToString() + x.ToString() + FileUpload1.FileName;
                        // Upload the file
                        FileUpload1.SaveAs(Server.MapPath(s));
                        Label2.ForeColor = System.Drawing.Color.Green;
                        Label2.Text = "File uploaded successfully";



                    }
                }
            }
            else
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "Please select a file";
            }

            return s;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/User/productdetails.aspx?view=" + ViewState["ad_id"].ToString());
        }



    }
}

