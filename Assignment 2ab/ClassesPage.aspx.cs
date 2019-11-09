using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
    public partial class ClassesPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from classes";
            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                classes_result.InnerHtml += "<div class=\"listitem\">";

                string classcode = row["CLASSCODE"];
                classes_result.InnerHtml += "<div class=\"col5\">" + classcode + "</div>";

                string classstartdate = row["STARTDATE"];
                classes_result.InnerHtml += "<div class=\"col5\">" + classstartdate + "</div>";

                string classfinishdate = row["FINISHDATE"];
                classes_result.InnerHtml += "<div class=\"col5\">" + classfinishdate + "</div>";

                string classname = row["CLASSNAME"];
                classes_result.InnerHtml += "<div class=\"col5last\">" + classname + "</div>";

                classes_result.InnerHtml += "</div>";
            }
        }
    }
}