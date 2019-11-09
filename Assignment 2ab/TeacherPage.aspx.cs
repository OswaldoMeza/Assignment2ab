using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
    public partial class TeacherPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from teachers";
            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                teachers_result.InnerHtml += "<div class=\"listitem\">";

                string teacherfirstname = row["TEACHERFNAME"];
                teachers_result.InnerHtml += "<div class=\"col5\">" + teacherfirstname + "</div>";

                string teacherlastname = row["TEACHERLNAME"];
                teachers_result.InnerHtml += "<div class=\"col5\">" + teacherlastname + "</div>";

                string teacheremployeenumber = row["EMPLOYEENUMBER"];
                teachers_result.InnerHtml += "<div class=\"col5\">" + teacheremployeenumber + "</div>";

                string teacherhiredate = row["HIREDATE"];
                teachers_result.InnerHtml += "<div class=\"col5\">" + teacherhiredate + "</div>";

                string teachersalary = row["SALARY"];
                teachers_result.InnerHtml += "<div class=\"col5last\">" + teachersalary + "</div>";

                teachers_result.InnerHtml += "</div>";
            }
        }
    }
}