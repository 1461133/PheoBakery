using System.Web;
using System.Web.Optimization;

namespace PheoBakery
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
           
            bundles.Add(new ScriptBundle("~/bundles/scripts").Include(
                        "~/Scripts/jquery-1.4.2.js",
                        "~/Scripts/jquery.tools.min.js",
                        "~/Scripts/dapur.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      
                      "~/Content/960.css",
                    "~/Content/reset.css",
                    "~/Content/text.css",
                    "~/Content/style.css",
                    "~/style.css",
                    "~/Content/thickbox/thickbox.css",
                    "~/themes/brown/style.css",
                    "~/Content/themes/brown/style.css"));
            
        }
    }
}
